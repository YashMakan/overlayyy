part of 'spotify_cubit.dart';

@freezed
class SpotifyState with _$SpotifyState {
  const factory SpotifyState({
    String? accessToken,
    Song? currentSong
  }) = _SpotifyState;
}

extension SpotifyStateX on SpotifyState {
  bool get isLoggedIn => accessToken != null;

  bool get isSongPlaying => currentSong != null;
}