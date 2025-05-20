import 'dart:convert';
import 'dart:io';

import 'package:overlayyy/data/models/song.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';
import 'datasource/musixmatch_api.dart';

const EXPIRATION_TIME = "1747736275.3535373";
const ACCESS_TOKEN = "BQD4Er5ua9n5FlCpyGjX8Fw3ta-qS26km0_bu7evMPuPUGxC0T6EJ_T3Vtalm0xUYbM_VV2ZY3DkY3RhSpOrnX_hJrjr5BJtqh-MU0UZNBgCR88RkfRxTBEwGcupJsrI5rmrhDnZxWirTEuyI3pIu7u1jVn5dwUOWvVNbifoqeyv62bjS_vbyakmgjBVXaPIHsmcWYuqnGdZVTRWcEJzFQHjtK3LegVAMLoZYaponUxFWCzaOA";

late MusixLyricsApi musixApi;

void main(List<String> args) async {
  try {
    musixApi = await MusixLyricsApi.create(ACCESS_TOKEN, EXPIRATION_TIME);
    print("MusixLyricsApi initialized successfully.");
  } catch (e) {
    print("CRITICAL: Failed to initialize MusixLyricsApi: $e");
    print("Please ensure Env.userToken and Env.expirationTime are correctly set in lib/models/env.dart");
  }

  final app = Router();

  app.get('/lyrics', _lyricsHandler);
  app.get('/health', (Request request) => Response.ok('OK'));

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(app);

  final port = int.parse(Platform.environment['PORT'] ?? '8081');
  final server = await shelf_io.serve(handler, InternetAddress.anyIPv4, port);

  print('🎵 Server listening on port ${server.port} 🎵');
  print('Try: http://localhost:${server.port}/lyrics?title=Bohemian%20Rhapsody&artist=Queen');
}

Future<Response> _lyricsHandler(Request request) async {
  if (musixApi == null) {
    return Response(HttpStatus.internalServerError,
      body: jsonEncode({'error': 'MusixLyricsApi not initialized. Check server logs.'}),
      headers: {'Content-Type': 'application/json'},
    );
  }

  final title = request.url.queryParameters['title'];
  final artist = request.url.queryParameters['artist'];
  final durationStr = request.url.queryParameters['duration'];

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
      return Response.notFound(
        jsonEncode({'message': 'Lyrics found but content is empty or unparseable.'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    final jsonLyrics = lyrics.map((lyric) => lyric.toJson()).toList();
    return Response.ok(
      jsonEncode(jsonLyrics),
      headers: {'Content-Type': 'application/json'},
    );
  } on StateError catch (e) {
    print("StateError during lyrics fetch: $e");
    return Response(HttpStatus.serviceUnavailable,
        body: jsonEncode({'error': 'Service configuration issue: ${e.message}'}),
        headers: {'Content-Type': 'application/json'});
  } on Exception catch (e) {
    print("Exception during lyrics fetch: $e");
    String errorMessage = e.toString();
    int statusCode = HttpStatus.internalServerError;

    if (errorMessage.contains("restricted") || errorMessage.contains("401") || errorMessage.contains("403")) {
      statusCode = HttpStatus.forbidden;
      errorMessage = "Lyrics restricted or permission issue.";
    } else if (errorMessage.contains("not found") || errorMessage.contains("404")) {
      statusCode = HttpStatus.notFound;
      errorMessage = "Lyrics not found for the specified track.";
    } else if (errorMessage.contains("Failed to get token") || errorMessage.contains("token is invalid")) {
      statusCode = HttpStatus.unauthorized;
      errorMessage = "Token issue. Please check server configuration or token validity.";
    }

    return Response(statusCode,
        body: jsonEncode({'error': errorMessage, 'details': e.toString()}),
        headers: {'Content-Type': 'application/json'});
  } catch (e, s) {
    print("Unexpected error during lyrics fetch: $e\n$s");
    return Response.internalServerError(
        body: jsonEncode({'error': 'An unexpected server error occurred.', 'details': e.toString()}),
        headers: {'Content-Type': 'application/json'});
  }
}
