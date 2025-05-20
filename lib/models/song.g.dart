// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LyricImpl _$$LyricImplFromJson(Map<String, dynamic> json) => _$LyricImpl(
      text: json['text'] as String,
      time: Time.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LyricImplToJson(_$LyricImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'time': instance.time,
    };

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
      total: (json['total'] as num).toDouble(),
      minutes: (json['minutes'] as num).toInt(),
      seconds: (json['seconds'] as num).toInt(),
      hundredths: (json['hundredths'] as num).toInt(),
    );

Map<String, dynamic> _$$TimeImplToJson(_$TimeImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'hundredths': instance.hundredths,
    };

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
      timestamp: (json['timestamp'] as num).toInt(),
      context: json['context'] == null
          ? null
          : Context.fromJson(json['context'] as Map<String, dynamic>),
      progress_ms: (json['progress_ms'] as num).toInt(),
      item: Item.fromJson(json['item'] as Map<String, dynamic>),
      currentlyPlayingType: json['currently_playing_type'] as String,
      actions: Actions.fromJson(json['actions'] as Map<String, dynamic>),
      isPlaying: json['is_playing'] as bool,
      lyrics: (json['lyrics'] as List<dynamic>?)
          ?.map((e) => Lyric.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'context': instance.context,
      'progress_ms': instance.progress_ms,
      'item': instance.item,
      'currently_playing_type': instance.currentlyPlayingType,
      'actions': instance.actions,
      'is_playing': instance.isPlaying,
      'lyrics': instance.lyrics,
    };

_$ContextImpl _$$ContextImplFromJson(Map<String, dynamic> json) =>
    _$ContextImpl(
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      type: json['type'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$ContextImplToJson(_$ContextImpl instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ActionsImpl _$$ActionsImplFromJson(Map<String, dynamic> json) =>
    _$ActionsImpl(
      disallows: Disallows.fromJson(json['disallows'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActionsImplToJson(_$ActionsImpl instance) =>
    <String, dynamic>{
      'disallows': instance.disallows,
    };

_$DisallowsImpl _$$DisallowsImplFromJson(Map<String, dynamic> json) =>
    _$DisallowsImpl(
      resuming: json['resuming'] as bool?,
      togglingRepeatTrack: json['toggling_repeat_track'] as bool?,
      togglingShuffle: json['toggling_shuffle'] as bool?,
    );

Map<String, dynamic> _$$DisallowsImplToJson(_$DisallowsImpl instance) =>
    <String, dynamic>{
      'resuming': instance.resuming,
      'toggling_repeat_track': instance.togglingRepeatTrack,
      'toggling_shuffle': instance.togglingShuffle,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      discNumber: (json['disc_number'] as num).toInt(),
      durationMs: (json['duration_ms'] as num).toInt(),
      explicit: json['explicit'] as bool,
      externalIds:
          ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      isLocal: json['is_local'] as bool,
      name: json['name'] as String,
      popularity: (json['popularity'] as num).toInt(),
      previewUrl: json['preview_url'] as String?,
      trackNumber: (json['track_number'] as num).toInt(),
      type: json['type'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'is_local': instance.isLocal,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
    };

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      albumType: json['album_type'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: json['release_date_precision'] as String,
      totalTracks: (json['total_tracks'] as num).toInt(),
      type: json['type'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'album_type': instance.albumType,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'total_tracks': instance.totalTracks,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      height: (json['height'] as num).toInt(),
      url: json['url'] as String,
      width: (json['width'] as num).toInt(),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      spotify: json['spotify'] as String,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$ExternalIdsImpl _$$ExternalIdsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalIdsImpl(
      isrc: json['isrc'] as String,
    );

Map<String, dynamic> _$$ExternalIdsImplToJson(_$ExternalIdsImpl instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
    };
