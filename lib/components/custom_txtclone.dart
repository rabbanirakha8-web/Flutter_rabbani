import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  final String textasli;
  const Mytext({super.key, required this.textasli});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        textasli,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}