import 'package:flutter/material.dart';

class ButtonQuiz extends StatelessWidget {
  final String text;

  const ButtonQuiz({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xff1B1B1B),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: .5,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
