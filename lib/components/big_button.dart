import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color corFundo;
  final Color cortexto;
  final FontWeight fontWeight;

  const SubmitButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.cortexto,
      required this.corFundo,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
            color: corFundo,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: cortexto, fontWeight: fontWeight, fontSize: 16),
            ),
          ),
        ));
  }
}
