import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/timer/bloc/timer_bloc.dart';

class ReplayButton extends StatelessWidget {
  const ReplayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.replay),
      onPressed: () => context.read<TimerBloc>().add(const TimerReset()),
    );
  }
}
