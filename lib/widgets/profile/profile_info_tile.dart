import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({super.key, required this.icone, required this.informacao});

  final IconData icone;
  final String informacao;


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
