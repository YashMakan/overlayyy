// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lyric _$LyricFromJson(Map<String, dynamic> json) {
  return _Lyric.fromJson(json);
}

/// @nodoc
mixin _$Lyric {
  String get text => throw _privateConstructorUsedError;
  Time get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricCopyWith<Lyric> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricCopyWith<$Res> {
  factory $LyricCopyWith(Lyric value, $Res Function(Lyric) then) =
      _$LyricCopyWithImpl<$Res, Lyric>;
  @useResult
  $Res call({String text, Time time});

  $TimeCopyWith<$Res> get time;
}

/// @nodoc
class _$LyricCopyWithImpl<$Res, $Val extends Lyric>
    implements $LyricCopyWith<$Res> {
  _$LyricCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res> get time {
    return $TimeCopyWith<$Res>(_value.time, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LyricImplCopyWith<$Res> implements $LyricCopyWith<$Res> {
  factory _$$LyricImplCopyWith(
          _$LyricImpl value, $Res Function(_$LyricImpl) then) =
      __$$LyricImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, Time time});

  @override
  $TimeCopyWith<$Res> get time;
}

/// @nodoc
class __$$LyricImplCopyWithImpl<$Res>
    extends _$LyricCopyWithImpl<$Res, _$LyricImpl>
    implements _$$LyricImplCopyWith<$Res> {
  __$$LyricImplCopyWithImpl(
      _$LyricImpl _value, $Res Function(_$LyricImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? time = null,
  }) {
    return _then(_$LyricImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LyricImpl implements _Lyric {
  const _$LyricImpl({required this.text, required this.time});

  factory _$LyricImpl.fromJson(Map<String, dynamic> json) =>
      _$$LyricImplFromJson(json);

  @override
  final String text;
  @override
  final Time time;

  @override
  String toString() {
    return 'Lyric(text: $text, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LyricImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LyricImplCopyWith<_$LyricImpl> get copyWith =>
      __$$LyricImplCopyWithImpl<_$LyricImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LyricImplToJson(
      this,
    );
  }
}

abstract class _Lyric implements Lyric {
  const factory _Lyric({required final String text, required final Time time}) =
      _$LyricImpl;

  factory _Lyric.fromJson(Map<String, dynamic> json) = _$LyricImpl.fromJson;

  @override
  String get text;
  @override
  Time get time;
  @override
  @JsonKey(ignore: true)
  _$$LyricImplCopyWith<_$LyricImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  double get total => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  int get seconds => throw _privateConstructorUsedError;
  int get hundredths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call({double total, int minutes, int seconds, int hundredths});
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? hundredths = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      hundredths: null == hundredths
          ? _value.hundredths
          : hundredths // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeImplCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$TimeImplCopyWith(
          _$TimeImpl value, $Res Function(_$TimeImpl) then) =
      __$$TimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double total, int minutes, int seconds, int hundredths});
}

/// @nodoc
class __$$TimeImplCopyWithImpl<$Res>
    extends _$TimeCopyWithImpl<$Res, _$TimeImpl>
    implements _$$TimeImplCopyWith<$Res> {
  __$$TimeImplCopyWithImpl(_$TimeImpl _value, $Res Function(_$TimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? hundredths = null,
  }) {
    return _then(_$TimeImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      hundredths: null == hundredths
          ? _value.hundredths
          : hundredths // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeImpl implements _Time {
  const _$TimeImpl(
      {required this.total,
      required this.minutes,
      required this.seconds,
      required this.hundredths});

  factory _$TimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeImplFromJson(json);

  @override
  final double total;
  @override
  final int minutes;
  @override
  final int seconds;
  @override
  final int hundredths;

  @override
  String toString() {
    return 'Time(total: $total, minutes: $minutes, seconds: $seconds, hundredths: $hundredths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.hundredths, hundredths) ||
                other.hundredths == hundredths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, minutes, seconds, hundredths);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      __$$TimeImplCopyWithImpl<_$TimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeImplToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  const factory _Time(
      {required final double total,
      required final int minutes,
      required final int seconds,
      required final int hundredths}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  double get total;
  @override
  int get minutes;
  @override
  int get seconds;
  @override
  int get hundredths;
  @override
  @JsonKey(ignore: true)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  int get timestamp => throw _privateConstructorUsedError;
  Context? get context => throw _privateConstructorUsedError;
  int get progress_ms => throw _privateConstructorUsedError;
  Item get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'currently_playing_type')
  String get currentlyPlayingType => throw _privateConstructorUsedError;
  Actions get actions => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_playing')
  bool get isPlaying => throw _privateConstructorUsedError;
  List<Lyric>? get lyrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {int timestamp,
      Context? context,
      int progress_ms,
      Item item,
      @JsonKey(name: 'currently_playing_type') String currentlyPlayingType,
      Actions actions,
      @JsonKey(name: 'is_playing') bool isPlaying,
      List<Lyric>? lyrics});

  $ContextCopyWith<$Res>? get context;
  $ItemCopyWith<$Res> get item;
  $ActionsCopyWith<$Res> get actions;
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? context = freezed,
    Object? progress_ms = null,
    Object? item = null,
    Object? currentlyPlayingType = null,
    Object? actions = null,
    Object? isPlaying = null,
    Object? lyrics = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
      progress_ms: null == progress_ms
          ? _value.progress_ms
          : progress_ms // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      currentlyPlayingType: null == currentlyPlayingType
          ? _value.currentlyPlayingType
          : currentlyPlayingType // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Actions,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      lyrics: freezed == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as List<Lyric>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContextCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ContextCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionsCopyWith<$Res> get actions {
    return $ActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SongImplCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$SongImplCopyWith(
          _$SongImpl value, $Res Function(_$SongImpl) then) =
      __$$SongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      Context? context,
      int progress_ms,
      Item item,
      @JsonKey(name: 'currently_playing_type') String currentlyPlayingType,
      Actions actions,
      @JsonKey(name: 'is_playing') bool isPlaying,
      List<Lyric>? lyrics});

  @override
  $ContextCopyWith<$Res>? get context;
  @override
  $ItemCopyWith<$Res> get item;
  @override
  $ActionsCopyWith<$Res> get actions;
}

/// @nodoc
class __$$SongImplCopyWithImpl<$Res>
    extends _$SongCopyWithImpl<$Res, _$SongImpl>
    implements _$$SongImplCopyWith<$Res> {
  __$$SongImplCopyWithImpl(_$SongImpl _value, $Res Function(_$SongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? context = freezed,
    Object? progress_ms = null,
    Object? item = null,
    Object? currentlyPlayingType = null,
    Object? actions = null,
    Object? isPlaying = null,
    Object? lyrics = freezed,
  }) {
    return _then(_$SongImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
      progress_ms: null == progress_ms
          ? _value.progress_ms
          : progress_ms // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      currentlyPlayingType: null == currentlyPlayingType
          ? _value.currentlyPlayingType
          : currentlyPlayingType // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Actions,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      lyrics: freezed == lyrics
          ? _value._lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as List<Lyric>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongImpl implements _Song {
  const _$SongImpl(
      {required this.timestamp,
      this.context,
      required this.progress_ms,
      required this.item,
      @JsonKey(name: 'currently_playing_type')
      required this.currentlyPlayingType,
      required this.actions,
      @JsonKey(name: 'is_playing') required this.isPlaying,
      final List<Lyric>? lyrics})
      : _lyrics = lyrics;

  factory _$SongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongImplFromJson(json);

  @override
  final int timestamp;
  @override
  final Context? context;
  @override
  final int progress_ms;
  @override
  final Item item;
  @override
  @JsonKey(name: 'currently_playing_type')
  final String currentlyPlayingType;
  @override
  final Actions actions;
  @override
  @JsonKey(name: 'is_playing')
  final bool isPlaying;
  final List<Lyric>? _lyrics;
  @override
  List<Lyric>? get lyrics {
    final value = _lyrics;
    if (value == null) return null;
    if (_lyrics is EqualUnmodifiableListView) return _lyrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Song(timestamp: $timestamp, context: $context, progress_ms: $progress_ms, item: $item, currentlyPlayingType: $currentlyPlayingType, actions: $actions, isPlaying: $isPlaying, lyrics: $lyrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.progress_ms, progress_ms) ||
                other.progress_ms == progress_ms) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.currentlyPlayingType, currentlyPlayingType) ||
                other.currentlyPlayingType == currentlyPlayingType) &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            const DeepCollectionEquality().equals(other._lyrics, _lyrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      context,
      progress_ms,
      item,
      currentlyPlayingType,
      actions,
      isPlaying,
      const DeepCollectionEquality().hash(_lyrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      __$$SongImplCopyWithImpl<_$SongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongImplToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  const factory _Song(
      {required final int timestamp,
      final Context? context,
      required final int progress_ms,
      required final Item item,
      @JsonKey(name: 'currently_playing_type')
      required final String currentlyPlayingType,
      required final Actions actions,
      @JsonKey(name: 'is_playing') required final bool isPlaying,
      final List<Lyric>? lyrics}) = _$SongImpl;

  factory _Song.fromJson(Map<String, dynamic> json) = _$SongImpl.fromJson;

  @override
  int get timestamp;
  @override
  Context? get context;
  @override
  int get progress_ms;
  @override
  Item get item;
  @override
  @JsonKey(name: 'currently_playing_type')
  String get currentlyPlayingType;
  @override
  Actions get actions;
  @override
  @JsonKey(name: 'is_playing')
  bool get isPlaying;
  @override
  List<Lyric>? get lyrics;
  @override
  @JsonKey(ignore: true)
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
mixin _$Context {
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res, Context>;
  @useResult
  $Res call(
      {@JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String type,
      String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ContextCopyWithImpl<$Res, $Val extends Context>
    implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContextImplCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$ContextImplCopyWith(
          _$ContextImpl value, $Res Function(_$ContextImpl) then) =
      __$$ContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String type,
      String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ContextImplCopyWithImpl<$Res>
    extends _$ContextCopyWithImpl<$Res, _$ContextImpl>
    implements _$$ContextImplCopyWith<$Res> {
  __$$ContextImplCopyWithImpl(
      _$ContextImpl _value, $Res Function(_$ContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ContextImpl(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContextImpl implements _Context {
  const _$ContextImpl(
      {@JsonKey(name: 'external_urls') required this.externalUrls,
      required this.href,
      required this.type,
      required this.uri});

  factory _$ContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContextImplFromJson(json);

  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  final String href;
  @override
  final String type;
  @override
  final String uri;

  @override
  String toString() {
    return 'Context(externalUrls: $externalUrls, href: $href, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextImpl &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, externalUrls, href, type, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      __$$ContextImplCopyWithImpl<_$ContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContextImplToJson(
      this,
    );
  }
}

abstract class _Context implements Context {
  const factory _Context(
      {@JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final String href,
      required final String type,
      required final String uri}) = _$ContextImpl;

  factory _Context.fromJson(Map<String, dynamic> json) = _$ContextImpl.fromJson;

  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  String get href;
  @override
  String get type;
  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Actions _$ActionsFromJson(Map<String, dynamic> json) {
  return _Actions.fromJson(json);
}

/// @nodoc
mixin _$Actions {
  Disallows get disallows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionsCopyWith<Actions> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionsCopyWith<$Res> {
  factory $ActionsCopyWith(Actions value, $Res Function(Actions) then) =
      _$ActionsCopyWithImpl<$Res, Actions>;
  @useResult
  $Res call({Disallows disallows});

  $DisallowsCopyWith<$Res> get disallows;
}

/// @nodoc
class _$ActionsCopyWithImpl<$Res, $Val extends Actions>
    implements $ActionsCopyWith<$Res> {
  _$ActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disallows = null,
  }) {
    return _then(_value.copyWith(
      disallows: null == disallows
          ? _value.disallows
          : disallows // ignore: cast_nullable_to_non_nullable
              as Disallows,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DisallowsCopyWith<$Res> get disallows {
    return $DisallowsCopyWith<$Res>(_value.disallows, (value) {
      return _then(_value.copyWith(disallows: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActionsImplCopyWith<$Res> implements $ActionsCopyWith<$Res> {
  factory _$$ActionsImplCopyWith(
          _$ActionsImpl value, $Res Function(_$ActionsImpl) then) =
      __$$ActionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Disallows disallows});

  @override
  $DisallowsCopyWith<$Res> get disallows;
}

/// @nodoc
class __$$ActionsImplCopyWithImpl<$Res>
    extends _$ActionsCopyWithImpl<$Res, _$ActionsImpl>
    implements _$$ActionsImplCopyWith<$Res> {
  __$$ActionsImplCopyWithImpl(
      _$ActionsImpl _value, $Res Function(_$ActionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disallows = null,
  }) {
    return _then(_$ActionsImpl(
      disallows: null == disallows
          ? _value.disallows
          : disallows // ignore: cast_nullable_to_non_nullable
              as Disallows,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionsImpl implements _Actions {
  const _$ActionsImpl({required this.disallows});

  factory _$ActionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionsImplFromJson(json);

  @override
  final Disallows disallows;

  @override
  String toString() {
    return 'Actions(disallows: $disallows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionsImpl &&
            (identical(other.disallows, disallows) ||
                other.disallows == disallows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, disallows);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionsImplCopyWith<_$ActionsImpl> get copyWith =>
      __$$ActionsImplCopyWithImpl<_$ActionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionsImplToJson(
      this,
    );
  }
}

abstract class _Actions implements Actions {
  const factory _Actions({required final Disallows disallows}) = _$ActionsImpl;

  factory _Actions.fromJson(Map<String, dynamic> json) = _$ActionsImpl.fromJson;

  @override
  Disallows get disallows;
  @override
  @JsonKey(ignore: true)
  _$$ActionsImplCopyWith<_$ActionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Disallows _$DisallowsFromJson(Map<String, dynamic> json) {
  return _Disallows.fromJson(json);
}

/// @nodoc
mixin _$Disallows {
  bool? get resuming => throw _privateConstructorUsedError;
  @JsonKey(name: 'toggling_repeat_track')
  bool? get togglingRepeatTrack => throw _privateConstructorUsedError;
  @JsonKey(name: 'toggling_shuffle')
  bool? get togglingShuffle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisallowsCopyWith<Disallows> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisallowsCopyWith<$Res> {
  factory $DisallowsCopyWith(Disallows value, $Res Function(Disallows) then) =
      _$DisallowsCopyWithImpl<$Res, Disallows>;
  @useResult
  $Res call(
      {bool? resuming,
      @JsonKey(name: 'toggling_repeat_track') bool? togglingRepeatTrack,
      @JsonKey(name: 'toggling_shuffle') bool? togglingShuffle});
}

/// @nodoc
class _$DisallowsCopyWithImpl<$Res, $Val extends Disallows>
    implements $DisallowsCopyWith<$Res> {
  _$DisallowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resuming = freezed,
    Object? togglingRepeatTrack = freezed,
    Object? togglingShuffle = freezed,
  }) {
    return _then(_value.copyWith(
      resuming: freezed == resuming
          ? _value.resuming
          : resuming // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingRepeatTrack: freezed == togglingRepeatTrack
          ? _value.togglingRepeatTrack
          : togglingRepeatTrack // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingShuffle: freezed == togglingShuffle
          ? _value.togglingShuffle
          : togglingShuffle // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisallowsImplCopyWith<$Res>
    implements $DisallowsCopyWith<$Res> {
  factory _$$DisallowsImplCopyWith(
          _$DisallowsImpl value, $Res Function(_$DisallowsImpl) then) =
      __$$DisallowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? resuming,
      @JsonKey(name: 'toggling_repeat_track') bool? togglingRepeatTrack,
      @JsonKey(name: 'toggling_shuffle') bool? togglingShuffle});
}

/// @nodoc
class __$$DisallowsImplCopyWithImpl<$Res>
    extends _$DisallowsCopyWithImpl<$Res, _$DisallowsImpl>
    implements _$$DisallowsImplCopyWith<$Res> {
  __$$DisallowsImplCopyWithImpl(
      _$DisallowsImpl _value, $Res Function(_$DisallowsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resuming = freezed,
    Object? togglingRepeatTrack = freezed,
    Object? togglingShuffle = freezed,
  }) {
    return _then(_$DisallowsImpl(
      resuming: freezed == resuming
          ? _value.resuming
          : resuming // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingRepeatTrack: freezed == togglingRepeatTrack
          ? _value.togglingRepeatTrack
          : togglingRepeatTrack // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingShuffle: freezed == togglingShuffle
          ? _value.togglingShuffle
          : togglingShuffle // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisallowsImpl implements _Disallows {
  const _$DisallowsImpl(
      {this.resuming,
      @JsonKey(name: 'toggling_repeat_track') this.togglingRepeatTrack,
      @JsonKey(name: 'toggling_shuffle') this.togglingShuffle});

  factory _$DisallowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisallowsImplFromJson(json);

  @override
  final bool? resuming;
  @override
  @JsonKey(name: 'toggling_repeat_track')
  final bool? togglingRepeatTrack;
  @override
  @JsonKey(name: 'toggling_shuffle')
  final bool? togglingShuffle;

  @override
  String toString() {
    return 'Disallows(resuming: $resuming, togglingRepeatTrack: $togglingRepeatTrack, togglingShuffle: $togglingShuffle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisallowsImpl &&
            (identical(other.resuming, resuming) ||
                other.resuming == resuming) &&
            (identical(other.togglingRepeatTrack, togglingRepeatTrack) ||
                other.togglingRepeatTrack == togglingRepeatTrack) &&
            (identical(other.togglingShuffle, togglingShuffle) ||
                other.togglingShuffle == togglingShuffle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, resuming, togglingRepeatTrack, togglingShuffle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisallowsImplCopyWith<_$DisallowsImpl> get copyWith =>
      __$$DisallowsImplCopyWithImpl<_$DisallowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisallowsImplToJson(
      this,
    );
  }
}

abstract class _Disallows implements Disallows {
  const factory _Disallows(
      {final bool? resuming,
      @JsonKey(name: 'toggling_repeat_track') final bool? togglingRepeatTrack,
      @JsonKey(name: 'toggling_shuffle')
      final bool? togglingShuffle}) = _$DisallowsImpl;

  factory _Disallows.fromJson(Map<String, dynamic> json) =
      _$DisallowsImpl.fromJson;

  @override
  bool? get resuming;
  @override
  @JsonKey(name: 'toggling_repeat_track')
  bool? get togglingRepeatTrack;
  @override
  @JsonKey(name: 'toggling_shuffle')
  bool? get togglingShuffle;
  @override
  @JsonKey(ignore: true)
  _$$DisallowsImplCopyWith<_$DisallowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  Album get album => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: 'disc_number')
  int get discNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw _privateConstructorUsedError;
  bool get explicit => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_ids')
  ExternalIds get externalIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_local')
  bool get isLocal => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_number')
  int get trackNumber => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {Album album,
      List<Artist> artists,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'disc_number') int discNumber,
      @JsonKey(name: 'duration_ms') int durationMs,
      bool explicit,
      @JsonKey(name: 'external_ids') ExternalIds externalIds,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      @JsonKey(name: 'is_local') bool isLocal,
      String name,
      int popularity,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'track_number') int trackNumber,
      String type,
      String uri});

  $AlbumCopyWith<$Res> get album;
  $ExternalIdsCopyWith<$Res> get externalIds;
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? isLocal = null,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = freezed,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res> get externalIds {
    return $ExternalIdsCopyWith<$Res>(_value.externalIds, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Album album,
      List<Artist> artists,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'disc_number') int discNumber,
      @JsonKey(name: 'duration_ms') int durationMs,
      bool explicit,
      @JsonKey(name: 'external_ids') ExternalIds externalIds,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      @JsonKey(name: 'is_local') bool isLocal,
      String name,
      int popularity,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'track_number') int trackNumber,
      String type,
      String uri});

  @override
  $AlbumCopyWith<$Res> get album;
  @override
  $ExternalIdsCopyWith<$Res> get externalIds;
  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? isLocal = null,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = freezed,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ItemImpl(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {required this.album,
      required final List<Artist> artists,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'disc_number') required this.discNumber,
      @JsonKey(name: 'duration_ms') required this.durationMs,
      required this.explicit,
      @JsonKey(name: 'external_ids') required this.externalIds,
      @JsonKey(name: 'external_urls') required this.externalUrls,
      required this.href,
      required this.id,
      @JsonKey(name: 'is_local') required this.isLocal,
      required this.name,
      required this.popularity,
      @JsonKey(name: 'preview_url') this.previewUrl,
      @JsonKey(name: 'track_number') required this.trackNumber,
      required this.type,
      required this.uri})
      : _artists = artists,
        _availableMarkets = availableMarkets;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final Album album;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<String> _availableMarkets;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets {
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableMarkets);
  }

  @override
  @JsonKey(name: 'disc_number')
  final int discNumber;
  @override
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @override
  final bool explicit;
  @override
  @JsonKey(name: 'external_ids')
  final ExternalIds externalIds;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  final String href;
  @override
  final String id;
  @override
  @JsonKey(name: 'is_local')
  final bool isLocal;
  @override
  final String name;
  @override
  final int popularity;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @override
  @JsonKey(name: 'track_number')
  final int trackNumber;
  @override
  final String type;
  @override
  final String uri;

  @override
  String toString() {
    return 'Item(album: $album, artists: $artists, availableMarkets: $availableMarkets, discNumber: $discNumber, durationMs: $durationMs, explicit: $explicit, externalIds: $externalIds, externalUrls: $externalUrls, href: $href, id: $id, isLocal: $isLocal, name: $name, popularity: $popularity, previewUrl: $previewUrl, trackNumber: $trackNumber, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      album,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_availableMarkets),
      discNumber,
      durationMs,
      explicit,
      externalIds,
      externalUrls,
      href,
      id,
      isLocal,
      name,
      popularity,
      previewUrl,
      trackNumber,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final Album album,
      required final List<Artist> artists,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'disc_number') required final int discNumber,
      @JsonKey(name: 'duration_ms') required final int durationMs,
      required final bool explicit,
      @JsonKey(name: 'external_ids') required final ExternalIds externalIds,
      @JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final String href,
      required final String id,
      @JsonKey(name: 'is_local') required final bool isLocal,
      required final String name,
      required final int popularity,
      @JsonKey(name: 'preview_url') final String? previewUrl,
      @JsonKey(name: 'track_number') required final int trackNumber,
      required final String type,
      required final String uri}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  Album get album;
  @override
  List<Artist> get artists;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets;
  @override
  @JsonKey(name: 'disc_number')
  int get discNumber;
  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs;
  @override
  bool get explicit;
  @override
  @JsonKey(name: 'external_ids')
  ExternalIds get externalIds;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  String get href;
  @override
  String get id;
  @override
  @JsonKey(name: 'is_local')
  bool get isLocal;
  @override
  String get name;
  @override
  int get popularity;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;
  @override
  @JsonKey(name: 'track_number')
  int get trackNumber;
  @override
  String get type;
  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  @JsonKey(name: 'album_type')
  String get albumType => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date_precision')
  String get releaseDatePrecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tracks')
  int get totalTracks => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {@JsonKey(name: 'album_type') String albumType,
      List<Artist> artists,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      List<Image> images,
      String name,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'release_date_precision') String releaseDatePrecision,
      @JsonKey(name: 'total_tracks') int totalTracks,
      String type,
      String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? totalTracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'album_type') String albumType,
      List<Artist> artists,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      List<Image> images,
      String name,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'release_date_precision') String releaseDatePrecision,
      @JsonKey(name: 'total_tracks') int totalTracks,
      String type,
      String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? totalTracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$AlbumImpl(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      {@JsonKey(name: 'album_type') required this.albumType,
      required final List<Artist> artists,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'external_urls') required this.externalUrls,
      required this.href,
      required this.id,
      required final List<Image> images,
      required this.name,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'release_date_precision')
      required this.releaseDatePrecision,
      @JsonKey(name: 'total_tracks') required this.totalTracks,
      required this.type,
      required this.uri})
      : _artists = artists,
        _availableMarkets = availableMarkets,
        _images = images;

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  @JsonKey(name: 'album_type')
  final String albumType;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<String> _availableMarkets;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets {
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableMarkets);
  }

  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  final String href;
  @override
  final String id;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String name;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  final String releaseDatePrecision;
  @override
  @JsonKey(name: 'total_tracks')
  final int totalTracks;
  @override
  final String type;
  @override
  final String uri;

  @override
  String toString() {
    return 'Album(albumType: $albumType, artists: $artists, availableMarkets: $availableMarkets, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, totalTracks: $totalTracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albumType,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_availableMarkets),
      externalUrls,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      releaseDate,
      releaseDatePrecision,
      totalTracks,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {@JsonKey(name: 'album_type') required final String albumType,
      required final List<Artist> artists,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final String href,
      required final String id,
      required final List<Image> images,
      required final String name,
      @JsonKey(name: 'release_date') required final String releaseDate,
      @JsonKey(name: 'release_date_precision')
      required final String releaseDatePrecision,
      @JsonKey(name: 'total_tracks') required final int totalTracks,
      required final String type,
      required final String uri}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  @JsonKey(name: 'album_type')
  String get albumType;
  @override
  List<Artist> get artists;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  String get href;
  @override
  String get id;
  @override
  List<Image> get images;
  @override
  String get name;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  String get releaseDatePrecision;
  @override
  @JsonKey(name: 'total_tracks')
  int get totalTracks;
  @override
  String get type;
  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      String name,
      String type,
      String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      String name,
      String type,
      String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ArtistImpl(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {@JsonKey(name: 'external_urls') required this.externalUrls,
      required this.href,
      required this.id,
      required this.name,
      required this.type,
      required this.uri});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  final String href;
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String uri;

  @override
  String toString() {
    return 'Artist(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, externalUrls, href, id, name, type, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {@JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final String href,
      required final String id,
      required final String name,
      required final String type,
      required final String uri}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  String get href;
  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({int height, String url, int width});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, String url, int width});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_$ImageImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {required this.height, required this.url, required this.width});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final int height;
  @override
  final String url;
  @override
  final int width;

  @override
  String toString() {
    return 'Image(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {required final int height,
      required final String url,
      required final int width}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  int get height;
  @override
  String get url;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrls {
  String get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsCopyWith<ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsCopyWith<$Res> {
  factory $ExternalUrlsCopyWith(
          ExternalUrls value, $Res Function(ExternalUrls) then) =
      _$ExternalUrlsCopyWithImpl<$Res, ExternalUrls>;
  @useResult
  $Res call({String spotify});
}

/// @nodoc
class _$ExternalUrlsCopyWithImpl<$Res, $Val extends ExternalUrls>
    implements $ExternalUrlsCopyWith<$Res> {
  _$ExternalUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_value.copyWith(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String spotify});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_$ExternalUrlsImpl(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl({required this.spotify});

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  final String spotify;

  @override
  String toString() {
    return 'ExternalUrls(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls({required final String spotify}) =
      _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  String get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return _ExternalIds.fromJson(json);
}

/// @nodoc
mixin _$ExternalIds {
  String get isrc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalIdsCopyWith<ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdsCopyWith<$Res> {
  factory $ExternalIdsCopyWith(
          ExternalIds value, $Res Function(ExternalIds) then) =
      _$ExternalIdsCopyWithImpl<$Res, ExternalIds>;
  @useResult
  $Res call({String isrc});
}

/// @nodoc
class _$ExternalIdsCopyWithImpl<$Res, $Val extends ExternalIds>
    implements $ExternalIdsCopyWith<$Res> {
  _$ExternalIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = null,
  }) {
    return _then(_value.copyWith(
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalIdsImplCopyWith<$Res>
    implements $ExternalIdsCopyWith<$Res> {
  factory _$$ExternalIdsImplCopyWith(
          _$ExternalIdsImpl value, $Res Function(_$ExternalIdsImpl) then) =
      __$$ExternalIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String isrc});
}

/// @nodoc
class __$$ExternalIdsImplCopyWithImpl<$Res>
    extends _$ExternalIdsCopyWithImpl<$Res, _$ExternalIdsImpl>
    implements _$$ExternalIdsImplCopyWith<$Res> {
  __$$ExternalIdsImplCopyWithImpl(
      _$ExternalIdsImpl _value, $Res Function(_$ExternalIdsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = null,
  }) {
    return _then(_$ExternalIdsImpl(
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalIdsImpl implements _ExternalIds {
  const _$ExternalIdsImpl({required this.isrc});

  factory _$ExternalIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalIdsImplFromJson(json);

  @override
  final String isrc;

  @override
  String toString() {
    return 'ExternalIds(isrc: $isrc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdsImpl &&
            (identical(other.isrc, isrc) || other.isrc == isrc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isrc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      __$$ExternalIdsImplCopyWithImpl<_$ExternalIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalIdsImplToJson(
      this,
    );
  }
}

abstract class _ExternalIds implements ExternalIds {
  const factory _ExternalIds({required final String isrc}) = _$ExternalIdsImpl;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$ExternalIdsImpl.fromJson;

  @override
  String get isrc;
  @override
  @JsonKey(ignore: true)
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
