import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:overlayyy/models/app_configuration.dart';
import 'package:overlayyy/models/env.dart';
import 'package:overlayyy/models/song.dart';

part 'spotify_cubit.freezed.dart';

part 'spotify_state.dart';

class SpotifyCubit extends Cubit<SpotifyState> {
  SpotifyCubit() : super(const SpotifyState());

  void initialize() {
    SpotifyState updatedState;
    print("SET:: ${Env.accessToken}");
    updatedState = state.copyWith(
      accessToken: Env.accessToken,
    );
    emit(updatedState);
  }

  Future<void> authenticate() async {
    String getRedirectUri() {
      if (kIsWeb) {
        return 'http://127.0.0.1:5000/auth.html';
      } else {
        return 'myflutterapp://callback';
      }
    }

    final redirectUri = getRedirectUri();

    final authUrl =
        'https://accounts.spotify.com/authorize?response_type=code&client_id=${state.configuration?.clientId}&redirect_uri=$redirectUri&scope=user-read-playback-state%20user-read-currently-playing';

    final result = await FlutterWebAuth2.authenticate(
      url: authUrl,
      callbackUrlScheme: "myflutterapp",
    );

    final code = Uri.parse(result).queryParameters['code'];
    if (code != null) {
      final response = await post(
        Uri.parse('https://accounts.spotify.com/api/token'),
        headers: {
          'Authorization':
              'Basic ${base64Encode(utf8.encode('${state.configuration?.clientId}:${state.configuration?.clientSecret}'))}',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'grant_type': 'authorization_code',
          'code': code,
          'redirect_uri': state.configuration?.redirectUri,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        emit(state.copyWith(accessToken: jsonResponse['access_token']));
      } else {
        print('Token exchange failed: ${response.body}');
      }
    }
  }

  Future<void> fetchCurrentPlayingSong() async {
    final accessToken = state.accessToken;
    print(accessToken);
    if (accessToken == null) return;

    print("Fetching current playing song from Spotify API...");

    final response = await get(
      Uri.parse('https://api.spotify.com/v1/me/player/currently-playing'),
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200 && response.body.isNotEmpty) {
      final jsonResponse = json.decode(response.body);

      if (jsonResponse['item'] != null) {
        Song currentSong = Song.fromJson(jsonResponse);
        if(state.currentSong?.lyrics != null) {
          currentSong = currentSong.copyWith(
            lyrics: state.currentSong?.lyrics
          );
        }
        SpotifyState updatedState = state.copyWith(currentSong: currentSong);
        if (state.currentSong?.item.id != currentSong.item.id) {
          final lyrics = await fetchLyricsFromServer(
              currentSong.item.name, currentSong.item.artists.first.name);
          updatedState = updatedState.copyWith(
              currentSong: currentSong.copyWith(lyrics: lyrics));
        }
        emit(updatedState);
      } else {
        emit(state.copyWith(currentSong: null));
      }
    } else {
      emit(state.copyWith(currentSong: null));
    }
  }

  void pausePlayback() {}

  void resumePlayback() {}

  skipToPrevious() {}

  skipToNext() {}

  void seekToPosition(int int) {}

  Future<List<Lyric>> fetchLyricsFromServer(String title, String artist,
      {int? durationSeconds}) async {
    const String _lyricsApiBaseUrl =
        'http://localhost:8081'; // Or your server's actual address and port

    final queryParameters = <String, String>{
      'title': title,
      'artist': artist,
    };
    if (durationSeconds != null) {
      queryParameters['duration'] = durationSeconds.toString();
    }

    // Construct the URI
    final uri = Uri.parse('$_lyricsApiBaseUrl/lyrics')
        .replace(queryParameters: queryParameters);
    print('Fetching lyrics from: $uri');

    try {
      final response =
          await get(uri).timeout(const Duration(seconds: 20)); // Added timeout

      if (response.statusCode == 200) {
        // Successfully fetched, parse the JSON
        final List<dynamic> jsonData = jsonDecode(response.body);
        // Convert each JSON map in the list to a Lyric object
        final List<Lyric> lyrics = jsonData
            .map((lyricJson) =>
                Lyric.fromJson(lyricJson as Map<String, dynamic>))
            .toList();
        return lyrics;
      } else if (response.statusCode == 404) {
        print('Lyrics not found on server for "$title" by "$artist".');
        // It's common to return an empty list if lyrics are not found
        return [];
      } else {
        // Handle other server errors
        String errorMessage = 'Failed to load lyrics.';
        try {
          final errorBody = jsonDecode(response.body);
          if (errorBody is Map && errorBody.containsKey('error')) {
            errorMessage = errorBody['error'].toString();
          } else {
            errorMessage = response.body;
          }
        } catch (_) {
          // If error body is not JSON or doesn't have 'error' key
          errorMessage = response.body.isNotEmpty
              ? response.body
              : "Server error ${response.statusCode}";
        }
        print('Error fetching lyrics: ${response.statusCode} - $errorMessage');
        throw Exception(
            'Failed to load lyrics: $errorMessage (Status Code: ${response.statusCode})');
      }
    } on ClientException catch (e) {
      // Network-related errors (e.g., host not found, connection refused)
      print('Network error fetching lyrics: $e');
      throw Exception(
          'Network error: Could not connect to the lyrics server. Please check your connection.');
    } on FormatException catch (e) {
      // Errors during JSON decoding
      print('Error parsing lyrics JSON response: $e');
      throw Exception('Error parsing lyrics data from the server.');
    } catch (e) {
      // Other unexpected errors
      print('Unexpected error fetching lyrics: $e');
      throw Exception('An unexpected error occurred while fetching lyrics.');
    }
  }
}
