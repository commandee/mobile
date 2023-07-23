// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData icone;
  final TextInputType tipoDoTeclado;

  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icone, required this.tipoDoTeclado});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: tipoDoTeclado ,
        textInputAction: TextInputAction.done,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icone,
              color: Colors.deepPurple[300],
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple.shade200),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(16.0)),
            fillColor: Colors.white70,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.deepPurple[300])),
    );
  }
}
