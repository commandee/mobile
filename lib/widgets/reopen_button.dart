import 'package:flutter/material.dart';

class ReOpenButton extends StatelessWidget {
  const ReOpenButton({super.key, required this.funcao});

  final Function() funcao;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: (){
        funcao();
      }, 
      icon: Icon(Icons.replay, color: Theme.of(context).colorScheme.tertiary,), 
      label: Text("Reabrir", style: TextStyle(fontSize: 20),),
      style: OutlinedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        side: BorderSide(
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
      );
  }
}