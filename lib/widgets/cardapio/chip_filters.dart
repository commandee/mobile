import 'package:flutter/material.dart';
import 'package:teste/model/item.dart';

class Filtros extends StatefulWidget {
  const Filtros({super.key, this.onChanged});
  final void Function(ItemCategory?)? onChanged;

  @override
  State<Filtros> createState() => _FiltrosState();
}

class _FiltrosState extends State<Filtros> {
  ItemCategory? _category = null;
  ItemCategory? get category => _category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: ItemCategory.values
                .map((category) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ChoiceChip(
                        label: Text(category.name),
                        selected: _category == category, // acontecerá que o chip selecionado será o que tiver o mesmo index
                        onSelected: (selected) {
                          setState(() {
                            _category = selected ? category : null;
                            widget.onChanged?.call(_category);
                          });
                        },
                        selectedColor: Theme.of(context).colorScheme.primary,
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ))
                .toList()),
      ),
    );
  }
}
