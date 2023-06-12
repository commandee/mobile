import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: fundoClaro,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Register Page"),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
