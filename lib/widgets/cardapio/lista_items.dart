import 'package:flutter/material.dart';
import 'package:teste/controller/item_controller.dart';
import 'package:teste/model/item.dart';
import 'package:provider/provider.dart';
import 'package:teste/widgets/cardapio/card_item_cardapio.dart'; // Importe o provider

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
    
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 232),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CardItemCardapio(
            item: items[index],
          );
        },
      
    );
  }
}
