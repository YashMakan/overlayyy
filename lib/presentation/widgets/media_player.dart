import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlayyy/data/models/song.dart';
import 'package:overlayyy/presentation/cubit/spotify_cubit.dart';

class MediaPlayer extends StatefulWidget {
  final Song song;
  const MediaPlayer({Key? key, required this.song}) : super(key: key);

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  // Potentially local state for slider value if not directly tied to cubit updates
  // double _currentSliderValue = 0;

  // Timer for updating progress if not relying solely on cubit polling
  // Timer? _progressTimer;

  @override
  void initState() {
    super.initState();
    // _currentSliderValue = widget.song.progress_ms.toDouble();
    // Start a timer to update the progress bar locally if desired for smoother UI
    // _startProgressTimer();
  }

  // void _startProgressTimer() {
  //   _progressTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     if (widget.song.isPlaying && mounted) {
  //       setState(() {
  //         _currentSliderValue = (_currentSliderValue + 1000).clamp(0, widget.song.item.durationMs.toDouble());
  //       });
  //     }
  //   });
  // }

  @override
  void dispose() {
    // _progressTimer?.cancel();
    super.dispose();
  }

  // @override
  // void didUpdateWidget(covariant MediaPlayer oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (widget.song.progress_ms != oldWidget.song.progress_ms) {
  //     _currentSliderValue = widget.song.progress_ms.toDouble();
  //   }
  //   if (widget.song.isPlaying != oldWidget.song.isPlaying) {
  //      if (widget.song.isPlaying) {
  //        // _startProgressTimer();
  //      } else {
  //        // _progressTimer?.cancel();
  //      }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // Use OrientationBuilder or MediaQuery to adapt to landscape/portrait
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          return _buildLandscapeLayout();
        } else {
          return _buildPortraitLayout(); // Or a similar layout to landscape if desired
        }
      },
    );
  }

  Widget _buildLandscapeLayout() {

    // Let's try to make the player take up a significant portion of the screen
    // but not necessarily full screen, with padding.
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black, // As per reference
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Fit content
          children: [
            // Album Art / Video placeholder
            Expanded( // This makes the image take available vertical space
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Padding around the image
                child: AspectRatio(
                  aspectRatio: 16 / 9, // Common video aspect ratio
                  child: SongLyricsWidget(song: widget.song),
                ),
              ),
            ),
            // Controls
            _ControlsRow(
              isPlaying: widget.song.isPlaying,
              onPlayPause: () {
                if (widget.song.isPlaying) {
                  context.read<SpotifyCubit>().pausePlayback();
                } else {
                  context.read<SpotifyCubit>().resumePlayback();
                }
              },
              onSkipPrevious: () => context.read<SpotifyCubit>().skipToPrevious(),
              onSkipNext: () => context.read<SpotifyCubit>().skipToNext(),
              // Add shuffle/repeat if needed and supported by cubit
            ),
            // Seekbar
            _SeekBarRow(
              progressMs: widget.song.progress_ms,
              durationMs: widget.song.item.durationMs,
              onSeek: (value) {
                // Assuming cubit has a seek method
                context.read<SpotifyCubit>().seekToPosition(value.toInt());
              },
            ),
            const SizedBox(height: 8), // Some padding at the bottom
          ],
        ),
      ),
    );
  }

  Widget _buildPortraitLayout() {
    // For portrait, could be similar to landscape but might stack controls differently
    // or just use the same landscape layout.
    // The request implies landscape, so let's focus on that.
    // If we just return landscape layout, it will work in portrait too.
    return _buildLandscapeLayout();
  }
}

class _ControlsRow extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback onPlayPause;
  final VoidCallback onSkipPrevious;
  final VoidCallback onSkipNext;
  // final VoidCallback onShuffle;
  // final VoidCallback onRepeat;

  const _ControlsRow({
    required this.isPlaying,
    required this.onPlayPause,
    required this.onSkipPrevious,
    required this.onSkipNext,
    // required this.onShuffle,
    // required this.onRepeat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.shuffle, color: Colors.white54),
            onPressed: () { /* TODO: context.read<SpotifyCubit>().toggleShuffle(); */ },
            iconSize: 24,
          ),
          IconButton(
            icon: const Icon(Icons.skip_previous, color: Colors.white),
            onPressed: onSkipPrevious,
            iconSize: 36,
          ),
          IconButton(
            icon: Icon(
              isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
              color: Colors.white,
            ),
            onPressed: onPlayPause,
            iconSize: 60, // Prominent play/pause button
          ),
          IconButton(
            icon: const Icon(Icons.skip_next, color: Colors.white),
            onPressed: onSkipNext,
            iconSize: 36,
          ),
          IconButton(
            icon: const Icon(Icons.repeat, color: Colors.white54),
            onPressed: () { /* TODO: context.read<SpotifyCubit>().toggleRepeat(); */ },
            iconSize: 24,
          ),
        ],
      ),
    );
  }
}

class _SeekBarRow extends StatelessWidget {
  final int progressMs;
  final int durationMs;
  final ValueChanged<double> onSeek;

  const _SeekBarRow({
    required this.progressMs,
    required this.durationMs,
    required this.onSeek,
  });

  String _formatDuration(int milliseconds) {
    final int seconds = (milliseconds / 1000).truncate();
    final int minutes = (seconds / 60).truncate();
    final String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    final String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    double currentSliderValue = progressMs.toDouble().clamp(0.0, durationMs.toDouble());
    if (durationMs == 0) currentSliderValue = 0; // Avoid division by zero if duration is 0

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Text(
            _formatDuration(progressMs),
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
          Expanded(
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2.0,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 12.0),
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white30,
                thumbColor: Colors.white,
              ),
              child: Slider(
                value: currentSliderValue,
                min: 0.0,
                max: durationMs.toDouble() > 0 ? durationMs.toDouble() : 1.0, // Ensure max is not 0
                onChanged: (value) {
                  // For smoother dragging, you might want to update a local state here
                  // and only call onSeek on onChangeEnd.
                  // For now, directly call onSeek.
                },
                onChangeEnd: (value) {
                  onSeek(value);
                },
              ),
            ),
          ),
          Text(
            _formatDuration(durationMs),
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class SongLyricsWidget extends StatefulWidget {
  final Song song;
  const SongLyricsWidget({Key? key, required this.song}) : super(key: key);
  @override
  State<SongLyricsWidget> createState() => _SongLyricsWidgetState();
}

class _SongLyricsWidgetState extends State<SongLyricsWidget> {
  late ScrollController _scrollController;
  int _currentLyricIndex = -1;
  final GlobalKey _currentLyricItemKey = GlobalKey(); // Key for the current lyric item

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    // Calculate initial current lyric and scroll if needed
    _updateCurrentLyricStateAndScroll(isInitialCall: true);
  }

  @override
  void didUpdateWidget(covariant SongLyricsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Check if song progress or the lyrics list itself has changed
    if (widget.song.progress_ms != oldWidget.song.progress_ms ||
        !identical(widget.song.lyrics, oldWidget.song.lyrics)) {
      _updateCurrentLyricStateAndScroll();
    }
  }

  void _updateCurrentLyricStateAndScroll({bool isInitialCall = false}) {
    if (widget.song.lyrics == null || widget.song.lyrics!.isEmpty) {
      if (_currentLyricIndex != -1) {
        setState(() {
          _currentLyricIndex = -1;
        });
      }
      return;
    }

    final currentProgressSeconds = widget.song.progress_ms / 1000.0;
    int newFoundIndex = -1;

    for (int i = 0; i < widget.song.lyrics!.length; i++) {
      final lyric = widget.song.lyrics![i];
      final lyricStartTime = lyric.time.total;
      final nextLyricStartTime = (i == widget.song.lyrics!.length - 1)
          ? double.infinity // If last lyric, it's current until the "end"
          : widget.song.lyrics![i + 1].time.total;

      if (currentProgressSeconds >= lyricStartTime && currentProgressSeconds < nextLyricStartTime) {
        newFoundIndex = i;
        break;
      }
    }

    if (newFoundIndex != -1 && (newFoundIndex != _currentLyricIndex || isInitialCall)) {
      setState(() {
        _currentLyricIndex = newFoundIndex;
      });
      // Schedule the scroll to happen after the build phase,
      // ensuring the GlobalKey is attached to the new current item.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToCurrentItem();
      });
    } else if (newFoundIndex == -1 && _currentLyricIndex != -1) {
      // No current lyric (e.g., before first or after last playable part)
      setState(() {
        _currentLyricIndex = -1;
      });
    }
  }

  void _scrollToCurrentItem() {
    // Ensure the widget is still mounted, controller has clients, and the key's context is available
    if (!mounted || !_scrollController.hasClients || _currentLyricItemKey.currentContext == null) {
      return;
    }

    Scrollable.ensureVisible(
      _currentLyricItemKey.currentContext!,
      alignment: 0.5, // Align to the center of the viewport
      duration: const Duration(milliseconds: 300), // Smooth scroll duration
      curve: Curves.easeInOut, // Optional: easing curve for the animation
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: widget.song.item.album.images.isNotEmpty
            ? DecorationImage(
          image: NetworkImage(widget.song.item.album.images[0].url),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode( // Your backdrop solution
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        )
            : null,
        color: widget.song.item.album.images.isEmpty ? Colors.grey[800] : null,
      ),
      child: ListView.builder(
        controller: _scrollController, // Assign the controller
        itemCount: widget.song.lyrics?.length ?? 0,
        itemBuilder: (context, index) {
          // final currentProgressMs = widget.song.progress_ms; // Not needed here anymore
          // final currentProgressSeconds = currentProgressMs / 1000.0; // Not needed here anymore
          final lyric = widget.song.lyrics![index];

          // Use the state variable _currentLyricIndex to determine if this item is current
          final bool isCurrent = index == _currentLyricIndex;

          Widget lyricTextWidget = Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Text(
              lyric.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isCurrent ? Colors.white : Colors.white.withOpacity(0.75),
                fontSize: isCurrent ? 26 : 24,
                fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
                shadows: isCurrent
                    ? [
                  Shadow(
                    blurRadius: 8.0,
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(1.0, 1.0),
                  ),
                ]
                    : null,
              ),
            ),
          );

          if (isCurrent) {
            // If this is the current lyric, wrap it with KeyedSubtree and assign the GlobalKey
            // This allows _scrollToCurrentItem to find its context.
            return KeyedSubtree(
              key: _currentLyricItemKey,
              child: lyricTextWidget,
            );
          } else {
            return lyricTextWidget;
          }
        },
      ),
    );
  }
}