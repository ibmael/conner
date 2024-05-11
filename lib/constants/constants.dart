// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  final bool obscureText;
  final EdgeInsetsGeometry contentPadding;
  final BorderRadius borderRadius;
  TxtField({
    required this.obscureText,
    required this.borderRadius,
    required this.contentPadding,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        border: InputBorder.none,
        labelText: 'password.....',
        labelStyle: const TextStyle(
          color: Colors.black,
          fontFamily: 'Nunito',
          fontSize: 14,
        ),
        hintStyle: const TextStyle(
          fontSize: 16,
          color: Colors.amber,
          fontFamily: 'Nunito',
        ),
      ),
    );
  }
}
