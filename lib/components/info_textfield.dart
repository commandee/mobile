import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class InfoTextField extends StatelessWidget {
  const InfoTextField(
      {super.key, required this.text, required this.sectionName});

  final String text;
  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryLM,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(sectionName, style: TextStyle(color: primary, fontSize: 16)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: primary,
                  ))
            ],
          ),
          Text(text),
        ],
      ),
    );
  }
}
