import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class Filtros extends StatefulWidget {
  const Filtros({super.key});

  @override
  State<Filtros> createState() => _FiltrosState();
}

class _FiltrosState extends State<Filtros> {
  int selectedChip = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: List.generate(8, (index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: ChoiceChip(
                  label: Text(_getChoiceChipText(index)),
                  selected: selectedChip ==
                      index, // acontecerá que o chip selecionado será o que tiver o mesmo index
                  onSelected: (selected) {
                    setState(() {
                      selectedChip = selected ? index : 0;
                    });
                  },
                  selectedColor: accentLM,
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  String _getChoiceChipText(int index) {
    switch (index) {
      case 0:
        return 'Todos';
      case 1:
        return 'Bebidas';
      case 2:
        return 'Lanches';
      case 3:
        return 'Vegetariano';
      case 4:
        return 'Kids';
      case 5:
        return 'Recomendado';
      case 6:
        return 'Massas';
      case 7:
        return 'Saladas';
      case 8:
        return 'Sobremesas';
      default:
        return '';
    }
  }
}
