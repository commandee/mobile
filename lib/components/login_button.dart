import 'package:flutter/material.dart';

import '../constants.dart';

class LoginButton extends StatelessWidget {

  final Function()? onTap;

  const LoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: accent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          "Entrar",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    ));
  }
}
