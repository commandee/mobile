// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({super.key, required this.controller, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: secondary),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.circular(16.0)
          ),
          fillColor: Colors.white70,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.deepPurple[300])
        ),
      ),
    );
  }
}
