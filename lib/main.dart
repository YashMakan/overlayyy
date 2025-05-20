import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlayyy/login_button.dart';
import 'package:overlayyy/media_player.dart';
import 'package:overlayyy/state/spotify_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpotifyCubit()..initialize(),
      child: MaterialApp(
        title: 'PIP View',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const PipContentWidget(),
      ),
    );
  }
}

class PipContentWidget extends StatefulWidget {
  const PipContentWidget({super.key});

  @override
  State<PipContentWidget> createState() => _PipContentWidgetState();
}

class _PipContentWidgetState extends State<PipContentWidget> {
  Timer? pollingTimer;

  void startPollingCurrentSong() {
    pollingTimer?.cancel();
    context.read<SpotifyCubit>().fetchCurrentPlayingSong();
    pollingTimer = Timer.periodic(const Duration(milliseconds: 1500), (_) {
      context.read<SpotifyCubit>().fetchCurrentPlayingSong();
    });
    print("Started polling current song every 3 seconds.");
  }

  void stopPollingCurrentSong() {
    pollingTimer?.cancel();
    pollingTimer = null;
    setState(() {});
    print("Stopped polling current song.");
  }

  @override
  void dispose() {
    pollingTimer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    startPollingCurrentSong();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212123),
      body: Center(
        child: BlocBuilder<SpotifyCubit, SpotifyState>(
          builder: (context, state) {
            if (!state.isLoggedIn) {
              return LoginButton(
                onPressed: () => context.read<SpotifyCubit>().authenticate(),
              );
            } else if (state.isSongPlaying) {
              return MediaPlayer(song: state.currentSong!);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
