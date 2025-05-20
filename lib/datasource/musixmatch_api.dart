import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:overlayyy/models/env.dart';
import 'package:overlayyy/models/song.dart';

class MusixLyricsApi {
  static const String APP_ID = "web-desktop-app-v1.0";
  static const String BASE_URL = "https://apic-desktop.musixmatch.com/ws/1.1";

  String? _token;
  int _tokenExpirationMs = 0; // Store as millisecondsSinceEpoch

  final http.Client _httpClient;

  // Private constructor. Use MusixLyricsApi.create() for instance creation.
  MusixLyricsApi._internal({http.Client? client}) : _httpClient = client ?? http.Client();

  // Static factory method for asynchronous initialization.
  static Future<MusixLyricsApi> create(String envUserToken, String envExpirationTimeStr, {http.Client? client}) async {
    final api = MusixLyricsApi._internal(client: client);
    await api._loadOrFetchToken(envUserToken, envExpirationTimeStr);
    return api;
  }

  Future<void> _loadOrFetchToken(String envUserToken, String envExpirationTimeStr) async {

    if (envUserToken.isNotEmpty && envExpirationTimeStr.isNotEmpty) {
      // Assuming Env.expirationTime stores seconds since epoch (float or int) as a string,
      // similar to Python's time.time() output.
      final double? envExpirationSeconds = double.tryParse(envExpirationTimeStr);
      if (envExpirationSeconds != null) {
        final envExpirationMillis = (envExpirationSeconds * 1000).toInt();
        if (envExpirationMillis > DateTime.now().millisecondsSinceEpoch) {
          _token = envUserToken;
          _tokenExpirationMs = envExpirationMillis;
          // print("Token successfully loaded from Env configuration.");
          return;
        } else {
          // print("Token from Env configuration is expired.");
        }
      } else {
        // print("Failed to parse expiration time from Env configuration: '$envExpirationTimeStr'");
      }
    } else {
      // print("User token or expiration time not found in Env configuration.");
    }

    // If token from Env is not usable, or if an existing in-memory token is stale.
    // print("Attempting to fetch a new token...");
    await _fetchToken();
  }

  Future<void> _fetchToken() async {
    final uri = Uri.parse("$BASE_URL/token.get").replace(queryParameters: {"app_id": APP_ID});
    final headers = {
      "authority": "apic-desktop.musixmatch.com",
      "cookie": "AWSELBCORS=0; AWSELB=0;", // Standard cookie often needed
    };

    try {
      final response = await _httpClient.get(uri, headers: headers).timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) {
        throw Exception("Failed to get token: HTTP ${response.statusCode} - ${response.body}");
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final message = data['message'] as Map<String, dynamic>?;
      final header = message?['header'] as Map<String, dynamic>?;
      final statusCode = header?['status_code'] as int?;

      if (statusCode != 200) {
        throw Exception("Failed to get token: API error status $statusCode - ${response.body}");
      }

      final userToken = message?['body']?['user_token'] as String?;
      if (userToken == null || userToken.isEmpty) {
        throw Exception("Failed to get token: 'user_token' not found or empty in response - ${response.body}");
      }

      _token = userToken;
      // Musixmatch tokens are typically valid for a short period (e.g., 10 minutes = 600 seconds)
      _tokenExpirationMs = DateTime.now().millisecondsSinceEpoch + (600 * 1000);
      // print("New token fetched successfully. Expires at: ${DateTime.fromMillisecondsSinceEpoch(_tokenExpirationMs)}");

    } catch (e) {
      // print("Error fetching token: $e");
      rethrow; // Propagate the error
    }
  }

  Future<void> _ensureTokenValid() async {
    if (_token == null || DateTime.now().millisecondsSinceEpoch >= _tokenExpirationMs) {
      // print("Token is null or expired. Fetching a new one.");
      await _fetchToken();
    }
  }

  Future<Map<String, dynamic>> _get(String endpoint, Map<String, String> queryParams) async {
    await _ensureTokenValid(); // Ensures token is valid before making the request

    final headers = {
      "authority": "apic-desktop.musixmatch.com",
      "cookie": "AWSELBCORS=0; AWSELB=0;",
    };

    final uri = Uri.parse("$BASE_URL$endpoint").replace(queryParameters: queryParams);

    final response = await _httpClient.get(uri, headers: headers).timeout(const Duration(seconds: 10));

    if (response.statusCode != 200) {
      throw Exception("API request to $endpoint failed: HTTP ${response.statusCode} - ${response.body}");
    }
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  Future<List<Lyric>> getLyricsAlternative(String title, String artist, {int? durationSeconds}) async {
    // Ensure token is valid and available before constructing parameters.
    await _ensureTokenValid();
    if (_token == null) {
      // This state should ideally be prevented if _ensureTokenValid throws on fetch failure.
      throw StateError("User token is not available after attempting to ensure validity. Cannot fetch lyrics.");
    }

    final params = {
      "format": "json",
      "namespace": "lyrics_richsynched", // For synchronized lyrics
      "subtitle_format": "mxm",          // Musixmatch's rich format
      "app_id": APP_ID,
      "usertoken": _token!, // Non-null assertion is safe here due to the check/ensureToken call.
      "q_album": "",        // Album can be empty if not known
      "q_artist": artist,
      "q_artists": artist,  // API sometimes uses plural form
      "q_track": title,
    };

    if (durationSeconds != null) {
      params["q_duration"] = durationSeconds.toString();
      params["f_subtitle_length"] = durationSeconds.toString();
      // Optional: params["f_subtitle_length_max_deviation"] = "1"; // Max deviation in seconds
    }

    try {
      final data = await _get("/macro.subtitles.get", params);

      // Navigate through the complex Musixmatch response structure
      final macroCalls = data['message']?['body']?['macro_calls'] as Map<String, dynamic>?;
      if (macroCalls == null) {
        throw Exception("Lyrics query for '$title' by '$artist' returned no 'macro_calls' structure. Response: $data");
      }

      final trackSubtitlesGetData = macroCalls['track.subtitles.get'] as Map<String, dynamic>?;
      final subtitlesMessage = trackSubtitlesGetData?['message'] as Map<String, dynamic>?;
      final subtitlesHeader = subtitlesMessage?['header'] as Map<String, dynamic>?;
      final subtitlesStatusCode = subtitlesHeader?['status_code'] as int?;

      // Check for errors specifically within the track.subtitles.get part of the macro
      if (subtitlesStatusCode != 200) {
        final hint = subtitlesHeader?['hint'] as String?;
        if (hint == 'restricted' || subtitlesStatusCode == 401 || subtitlesStatusCode == 403) { // 401: Unauthorized, 403: Forbidden
          throw Exception("Lyrics for '$title' by '$artist' are restricted or unavailable (status: $subtitlesStatusCode, hint: $hint).");
        }
        if (subtitlesStatusCode == 404) { // Not Found
          throw Exception("Lyrics not found for '$title' by '$artist' (status: 404).");
        }
        // General error for other statuses
        throw Exception("Error fetching subtitles for '$title' by '$artist': API status $subtitlesStatusCode. Full response: ${subtitlesMessage?['body']}");
      }

      final subtitleList = subtitlesMessage?['body']?['subtitle_list'] as List<dynamic>?;

      if (subtitleList == null || subtitleList.isEmpty) {
        throw Exception("No subtitles found for '$title' by '$artist', though API reported success. Subtitle list is empty or null.");
      }

      // Assuming the first subtitle in the list is the desired one
      final firstSubtitle = subtitleList[0] as Map<String, dynamic>?;
      final subtitleBody = firstSubtitle?['subtitle']?['subtitle_body'] as String?;

      if (subtitleBody == null || subtitleBody.isEmpty) {
        throw Exception("Subtitle body is empty or null for '$title' by '$artist'.");
      }

      return _parseLrc(subtitleBody);
    } catch (e) {
      // print("Error in getLyricsAlternative for '$title' by '$artist': $e");
      rethrow; // Propagate the error
    }
  }

  List<Lyric> _parseLrc(String lyricsJsonStr) {
    if (lyricsJsonStr.isEmpty) return [];

    List<dynamic> parsedJsonList;
    try {
      parsedJsonList = jsonDecode(lyricsJsonStr) as List<dynamic>;
    } catch (e) {
      return [];
    }

    final lyrics = <Lyric>[];

    for (final itemDynamic in parsedJsonList) {
      if (itemDynamic is! Map<String, dynamic>) continue;

      final item = itemDynamic;

      final timeInfo = item['time'] as Map<String, dynamic>? ?? const {};
      final minutes = timeInfo['minutes'] as int? ?? 0;
      final seconds = timeInfo['seconds'] as int? ?? 0;
      final hundredths = timeInfo['hundredths'] as int? ?? 0;
      final total = (minutes * 60 + seconds) + (hundredths / 100);

      String text = item['text'] as String? ?? "♪";
      if (text.trim().isEmpty && item.containsKey('text')) {
        text = "♪";
      } else if (!item.containsKey('text')) {
        text = "♪";
      }

      final time = Time(
        total: total,
        minutes: minutes,
        seconds: seconds,
        hundredths: hundredths,
      );

      lyrics.add(Lyric(time: time, text: text));
    }

    return lyrics;
  }

  // Call this method to release resources, e.g., when the API instance is no longer needed.
  void dispose() {
    _httpClient.close();
    // print("MusixLyricsApi disposed: HTTP client closed.");
  }
}