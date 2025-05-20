// bin/server.dart
import 'dart:convert';
import 'dart:io';

import 'package:overlayyy/models/song.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

// Adjust the import path based on your project structure
import 'datasource/musixmatch_api.dart'; // Points to lib/musix_lyrics_api.dart

// call https://apic-desktop.musixmatch.com/ws/1.1/token.get?app_id="web-desktop-app-v1.0 to update your access token here
const EXPIRATION_TIME="";
const ACCESS_TOKEN="";

// Global instance of the API client
// It's initialized in main() because its create() method is async
late MusixLyricsApi musixApi;

void main(List<String> args) async {
  // Initialize the MusixLyricsApi instance
  // This will attempt to load the token from Env
  try {
    musixApi = await MusixLyricsApi.create(ACCESS_TOKEN, EXPIRATION_TIME);
    print("MusixLyricsApi initialized successfully.");
  } catch (e) {
    print("CRITICAL: Failed to initialize MusixLyricsApi: $e");
    print("Please ensure Env.userToken and Env.expirationTime are correctly set in lib/models/env.dart");
    print("Server will not be able to fetch lyrics.");
    // Optionally, exit if API client is critical:
    // exit(1);
    // Or, let it run and fail on requests. For this example, we'll let it run.
  }


  final app = Router();

  app.get('/lyrics', _lyricsHandler);
  app.get('/health', (Request request) => Response.ok('OK')); // Health check

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(app);

  final port = int.parse(Platform.environment['PORT'] ?? '8081');
  final server = await shelf_io.serve(handler, InternetAddress.anyIPv4, port);

  print('🎵 Server listening on port ${server.port} 🎵');
  print('Try: http://localhost:${server.port}/lyrics?title=Bohemian%20Rhapsody&artist=Queen');
}

Future<Response> _lyricsHandler(Request request) async {
  // Check if musixApi was initialized
  if (musixApi == null) { // Should not happen if exit(1) is used above on error
    return Response(HttpStatus.internalServerError,
      body: jsonEncode({'error': 'MusixLyricsApi not initialized. Check server logs.'}),
      headers: {'Content-Type': 'application/json'},
    );
  }

  final title = request.url.queryParameters['title'];
  final artist = request.url.queryParameters['artist'];
  final durationStr = request.url.queryParameters['duration']; // Optional

  if (title == null || title.isEmpty || artist == null || artist.isEmpty) {
    return Response(HttpStatus.badRequest,
        body: jsonEncode({'error': 'Missing required query parameters: title, artist'}),
        headers: {'Content-Type': 'application/json'});
  }

  int? durationSeconds;
  if (durationStr != null && durationStr.isNotEmpty) {
    durationSeconds = int.tryParse(durationStr);
    if (durationSeconds == null) {
      return Response(HttpStatus.badRequest,
          body: jsonEncode({'error': 'Invalid duration format. Must be an integer.'}),
          headers: {'Content-Type': 'application/json'});
    }
  }

  try {
    print("Fetching lyrics for Title: '$title', Artist: '$artist', Duration: $durationSeconds");
    final List<Lyric> lyrics = await musixApi.getLyricsAlternative(
      title,
      artist,
      durationSeconds: durationSeconds,
    );

    if (lyrics.isEmpty) {
      // This case might happen if _parseLrc returns empty for some valid but unparseable lyrics
      // or if Musixmatch API returns an empty subtitle_body successfully.
      return Response.notFound(
        jsonEncode({'message': 'Lyrics found but content is empty or unparseable.'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Convert List<Lyric> to List<Map<String, dynamic>> for JSON encoding
    final jsonLyrics = lyrics.map((lyric) => lyric.toJson()).toList();
    return Response.ok(
      jsonEncode(jsonLyrics),
      headers: {'Content-Type': 'application/json'},
    );
  } on StateError catch (e) { // Catch token errors specifically
    print("StateError during lyrics fetch: $e");
    return Response(HttpStatus.serviceUnavailable, // 503
        body: jsonEncode({'error': 'Service configuration issue: ${e.message}'}),
        headers: {'Content-Type': 'application/json'});
  } on Exception catch (e) { // Catch other exceptions from MusixLyricsApi
    print("Exception during lyrics fetch: $e");
    String errorMessage = e.toString();
    int statusCode = HttpStatus.internalServerError; // 500

    if (errorMessage.contains("restricted") || errorMessage.contains("401") || errorMessage.contains("403")) {
      statusCode = HttpStatus.forbidden; // 403
      errorMessage = "Lyrics restricted or permission issue.";
    } else if (errorMessage.contains("not found") || errorMessage.contains("404")) {
      statusCode = HttpStatus.notFound; // 404
      errorMessage = "Lyrics not found for the specified track.";
    } else if (errorMessage.contains("Failed to get token") || errorMessage.contains("token is invalid")) {
      statusCode = HttpStatus.unauthorized; // 401 or 503 if it's our config
      errorMessage = "Token issue. Please check server configuration or token validity.";
    }

    return Response(statusCode,
        body: jsonEncode({'error': errorMessage, 'details': e.toString()}),
        headers: {'Content-Type': 'application/json'});
  } catch (e, s) { // Catch any other unexpected errors
    print("Unexpected error during lyrics fetch: $e\n$s");
    return Response.internalServerError(
        body: jsonEncode({'error': 'An unexpected server error occurred.', 'details': e.toString()}),
        headers: {'Content-Type': 'application/json'});
  }
}