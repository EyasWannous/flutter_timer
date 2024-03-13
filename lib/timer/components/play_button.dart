import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/timer/bloc/timer_bloc.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key, required this.state});
  final TimerState state;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.play_arrow),
      onPressed: () => context.read<TimerBloc>().add(
            TimerStarted(duration: state.duration),
          ),
    );
  }
}
