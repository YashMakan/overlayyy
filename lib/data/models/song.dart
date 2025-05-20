// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'song.freezed.dart';
part 'song.g.dart';


@freezed
class Lyric with _$Lyric {
  const factory Lyric({
    required String text,
    required Time time,
  }) = _Lyric;

  factory Lyric.fromJson(Map<String, dynamic> json) => _$LyricFromJson(json);
}

@freezed
class Time with _$Time {
  const factory Time({
    required double total,
    required int minutes,
    required int seconds,
    required int hundredths,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}

@freezed
class Song with _$Song {
  const factory Song({
    required int timestamp,
    Context? context,
    required int progress_ms,
    required Item item,
    @JsonKey(name: 'currently_playing_type') required String currentlyPlayingType,
    required Actions actions,
    @JsonKey(name: 'is_playing') required bool isPlaying,
    List<Lyric>? lyrics
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}

@freezed
class Context with _$Context {
  const factory Context({
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    required String href,
    required String type,
    required String uri,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) => _$ContextFromJson(json);
}

@freezed
class Actions with _$Actions {
  const factory Actions({
    required Disallows disallows,
  }) = _Actions;

  factory Actions.fromJson(Map<String, dynamic> json) => _$ActionsFromJson(json);
}

@freezed
class Disallows with _$Disallows {
  const factory Disallows({
    bool? resuming,
    @JsonKey(name: 'toggling_repeat_track') bool? togglingRepeatTrack,
    @JsonKey(name: 'toggling_shuffle') bool? togglingShuffle,
  }) = _Disallows;

  factory Disallows.fromJson(Map<String, dynamic> json) => _$DisallowsFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required Album album,
    required List<Artist> artists,
    @JsonKey(name: 'available_markets') required List<String> availableMarkets,
    @JsonKey(name: 'disc_number') required int discNumber,
    @JsonKey(name: 'duration_ms') required int durationMs,
    required bool explicit,
    @JsonKey(name: 'external_ids') required ExternalIds externalIds,
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    required String href,
    required String id,
    @JsonKey(name: 'is_local') required bool isLocal,
    required String name,
    required int popularity,
    @JsonKey(name: 'preview_url') String? previewUrl,
    @JsonKey(name: 'track_number') required int trackNumber,
    required String type,
    required String uri,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    @JsonKey(name: 'album_type') required String albumType,
    required List<Artist> artists,
    @JsonKey(name: 'available_markets') required List<String> availableMarkets,
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    required String href,
    required String id,
    required List<Image> images,
    required String name,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'release_date_precision') required String releaseDatePrecision,
    @JsonKey(name: 'total_tracks') required int totalTracks,
    required String type,
    required String uri,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    required String href,
    required String id,
    required String name,
    required String type,
    required String uri,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required int height,
    required String url,
    required int width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({
    required String spotify,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) => _$ExternalUrlsFromJson(json);
}

@freezed
class ExternalIds with _$ExternalIds {
  const factory ExternalIds({
    required String isrc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) => _$ExternalIdsFromJson(json);
}
