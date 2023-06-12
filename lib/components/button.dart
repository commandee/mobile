import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color corFundo;
  final Color cortexto;
  final double margin;

  const Button(
      {super.key,
      required this.onTap,
      required this.text,
      required this.cortexto,
      required this.corFundo,
      required this.margin});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          margin: EdgeInsets.symmetric(horizontal: margin),
          decoration: BoxDecoration(
            color: corFundo,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: cortexto, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ));
  }
}
