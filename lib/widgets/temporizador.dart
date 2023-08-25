import 'package:flutter/material.dart';

class Temporizador extends StatefulWidget {
  const Temporizador({super.key});

  @override
  State<Temporizador> createState() => _TemporizadorState();
}

class _TemporizadorState extends State<Temporizador> {
  double containerWidth = 300;
  int totalSeconds = 30;
  int currentSecond = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      startTimer();
    });
  }

  void startTimer() {
    Future<void>.delayed(const Duration(seconds: 1), () {
      if (currentSecond < totalSeconds) {
        setState(() {
          currentSecond++;
          containerWidth = 15 * (totalSeconds - currentSecond) / totalSeconds;
        });
        startTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: containerWidth,
      height: 15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
