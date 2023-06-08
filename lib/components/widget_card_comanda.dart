// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardComanda extends StatefulWidget {
  const CardComanda({super.key});

  @override
  State<CardComanda> createState() => _CardComandaState();
}

class _CardComandaState extends State<CardComanda> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            title: Text("Comanda",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text(
              "textinho yeyyy",
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(Icons.arrow_forward),
          )),
    );
  }
}
