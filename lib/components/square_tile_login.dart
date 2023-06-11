import 'package:flutter/material.dart ';

class SquareTile extends StatelessWidget {
  final String ImagePath;

  const SquareTile({super.key, required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.white38,
      ),
      child: Image.asset(
        ImagePath, height: 72,
      ),
    );
  }
}
