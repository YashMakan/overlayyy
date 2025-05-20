// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpotifyState {
  String? get accessToken => throw _privateConstructorUsedError;
  Song? get currentSong => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpotifyStateCopyWith<SpotifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyStateCopyWith<$Res> {
  factory $SpotifyStateCopyWith(
          SpotifyState value, $Res Function(SpotifyState) then) =
      _$SpotifyStateCopyWithImpl<$Res, SpotifyState>;
  @useResult
  $Res call({String? accessToken, Song? currentSong});

  $SongCopyWith<$Res>? get currentSong;
}

/// @nodoc
class _$SpotifyStateCopyWithImpl<$Res, $Val extends SpotifyState>
    implements $SpotifyStateCopyWith<$Res> {
  _$SpotifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? currentSong = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentSong: freezed == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as Song?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res>? get currentSong {
    if (_value.currentSong == null) {
      return null;
    }

    return $SongCopyWith<$Res>(_value.currentSong!, (value) {
      return _then(_value.copyWith(currentSong: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotifyStateImplCopyWith<$Res>
    implements $SpotifyStateCopyWith<$Res> {
  factory _$$SpotifyStateImplCopyWith(
          _$SpotifyStateImpl value, $Res Function(_$SpotifyStateImpl) then) =
      __$$SpotifyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessToken, Song? currentSong});

  @override
  $SongCopyWith<$Res>? get currentSong;
}

/// @nodoc
class __$$SpotifyStateImplCopyWithImpl<$Res>
    extends _$SpotifyStateCopyWithImpl<$Res, _$SpotifyStateImpl>
    implements _$$SpotifyStateImplCopyWith<$Res> {
  __$$SpotifyStateImplCopyWithImpl(
      _$SpotifyStateImpl _value, $Res Function(_$SpotifyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? currentSong = freezed,
  }) {
    return _then(_$SpotifyStateImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentSong: freezed == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as Song?,
    ));
  }
}

/// @nodoc

class _$SpotifyStateImpl with DiagnosticableTreeMixin implements _SpotifyState {
  const _$SpotifyStateImpl({this.accessToken, this.currentSong});

  @override
  final String? accessToken;
  @override
  final Song? currentSong;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpotifyState(accessToken: $accessToken, currentSong: $currentSong)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpotifyState'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('currentSong', currentSong));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyStateImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.currentSong, currentSong) ||
                other.currentSong == currentSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, currentSong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyStateImplCopyWith<_$SpotifyStateImpl> get copyWith =>
      __$$SpotifyStateImplCopyWithImpl<_$SpotifyStateImpl>(this, _$identity);
}

abstract class _SpotifyState implements SpotifyState {
  const factory _SpotifyState(
      {final String? accessToken,
      final Song? currentSong}) = _$SpotifyStateImpl;

  @override
  String? get accessToken;
  @override
  Song? get currentSong;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyStateImplCopyWith<_$SpotifyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
