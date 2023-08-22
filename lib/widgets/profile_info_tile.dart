import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  InfoTile({super.key, required this.icone, required this.informacao});

  IconData icone;
  String informacao;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      leading: Icon(
        icone,
        color: Theme.of(context).iconTheme.color,
        size: 28,
      ),
      title: Text(informacao),
    );
  }
}
