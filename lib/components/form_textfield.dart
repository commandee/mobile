// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextfield extends StatefulWidget {
  const MyTextfield({
    required this.controller,
    required this.labelText,
    required this.obscureText,
    required this.icone,
    this.tipoDoTeclado,
  });

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final IconData icone;
  final TextInputType? tipoDoTeclado;

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.tipoDoTeclado,
      textInputAction: TextInputAction.done,
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: Colors.deepPurple[300],
        ),
        prefixIcon: Icon(
          widget.icone,
          color: primary,
        ),
        suffixIcon: widget.controller.text.isEmpty
            ? IconButton(
                onPressed: () => widget.controller.clear(),
                icon: Icon(Icons.close),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary300),
            borderRadius: BorderRadius.circular(16.0)),
        fillColor: primary100,
        filled: true,
      ),
    );
  }
}
