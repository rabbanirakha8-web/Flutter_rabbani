import 'package:flutter/material.dart';

class MYButton extends StatelessWidget {
  final String text;
  


  const MYButton({
    super.key, 
    required this.text, 
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {}, 
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1DB954),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        text, 
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}