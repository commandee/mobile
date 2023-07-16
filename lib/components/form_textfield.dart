// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData icone;

  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icone,
              color: Colors.deepPurple[300],
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: secondaryLight),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryLight),
                borderRadius: BorderRadius.circular(16.0)),
            fillColor: Colors.white70,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.deepPurple[300])),
      ),
    );
  }
}
