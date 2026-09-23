

import 'package:flutter/material.dart';

class MYtfClone extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double cornerRadius;
  final bool isObscure;

  const MYtfClone({
    super.key,
    required this.hintText,
    required this.controller,
    required this.cornerRadius,
    this.isObscure = false 
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
    
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText, 
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFF282828),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
          borderSide: BorderSide.none,

        ),
      ),
    );
  }
}