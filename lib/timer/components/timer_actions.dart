import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/timer/bloc/timer_bloc.dart';
import 'package:flutter_timer/timer/components/pause_button.dart';
import 'package:flutter_timer/timer/components/play_button.dart';
import 'package:flutter_timer/timer/components/replay_button.dart';

class TimerActions extends StatelessWidget {
  const TimerActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (previous, current) =>
          previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...getButtonsByState(state, context),
          ],
        );
      },
    );
  }

  List<Widget> getButtonsByState(TimerState state, BuildContext context) {
    return switch (state) {
      TimerInitial() => [
          PlayButton(state: state),
        ],
      TimerRunInProgress() => [
          const PauseButton(),
          const ReplayButton(),
        ],
      TimerRunPause() => [
          PlayButton(state: state),
          const ReplayButton(),
        ],
      TimerRunComplete() => [
          const ReplayButton(),
        ],
    };
  }
}
