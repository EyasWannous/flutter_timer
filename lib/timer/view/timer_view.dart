import 'package:flutter/material.dart';
import 'package:flutter_timer/timer/components/background.dart';
import 'package:flutter_timer/timer/components/timer_actions.dart';
import 'package:flutter_timer/timer/components/timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Timer'),
        centerTitle: true,
      ),
      body: const Stack(children: <Widget>[
        Background(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Center(
                child: TimerText(),
              ),
            ),
            TimerActions(),
          ],
        )
      ]),
    );
  }
}
