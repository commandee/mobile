import 'package:flutter/material.dart ';
import 'package:teste/constants.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;

  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: secondaryLight,
      ),
      child: Image.asset(
        imagePath, height: 72,
      ),
    );
  }
}
