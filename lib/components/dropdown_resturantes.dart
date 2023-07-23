import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class DropdownRestaurante extends StatefulWidget {
  const DropdownRestaurante({super.key});

  @override
  State<DropdownRestaurante> createState() => _DropdownRestauranteState();
}

class _DropdownRestauranteState extends State<DropdownRestaurante> {
  _DropdownRestauranteState() {
    selectedValue = listaRestaurantes[0];
  }

  final listaRestaurantes = ["Restaurante 1", "Restaurante 2", "Restaurante 3"];
  String selectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: DropdownButtonFormField(
        hint: Text("Selecione o restaurante"),
        value: selectedValue,
        items: listaRestaurantes
            .map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value.toString();
          });
        },
        icon: const Icon(Icons.arrow_drop_down_circle, color: primary),
        decoration: const InputDecoration(
          labelText: "Seus restaurantes",
          prefixIcon: Icon(Icons.restaurant),
        ),
      )),
    );
  }
}
