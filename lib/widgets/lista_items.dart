import 'package:flutter/material.dart';
import 'package:teste/controller/item_controller.dart';
import 'package:teste/model/item.dart';
import 'package:provider/provider.dart';
import 'package:teste/widgets/card_item_cardapio.dart'; // Importe o provider

class ListaItems extends StatefulWidget {
  const ListaItems({super.key});

  @override
  State<ListaItems> createState() => _ListaItemsState();
}

class _ListaItemsState extends State<ListaItems> {
  @override
  Widget build(BuildContext context) {
    ItemController itemController = Provider.of<ItemController>(context);
    List<Item> items = itemController.getAll();
    return Expanded (
      child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CardCardapioFood(
                  item: items[index],
                );
              },
    
         
      ),
    );
  }
}
