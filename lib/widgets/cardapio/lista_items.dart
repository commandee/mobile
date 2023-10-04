import 'package:flutter/material.dart';
import 'package:teste/controller/item_controller.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/model/item.dart';
import 'package:provider/provider.dart';
import 'package:teste/widgets/cardapio/card_item_cardapio.dart'; // Importe o provider

class ListaItems extends StatelessWidget {
  final String? filter;
  final ItemCategory? category;
  final Commanda commanda;

  const ListaItems({super.key, this.filter, this.category, required this.commanda});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemController>(
      builder: (context, itemController, child) {
        List<Item> items;

        if ((filter == null || filter!.isEmpty) && category == null) {
          items = itemController.getAll();
        } else if ((filter != null && filter!.isNotEmpty) && category != null) {
          items = itemController
              .getAll()
              .where((item) =>
                  item.name.toLowerCase().contains(filter!.toLowerCase()) &&
                  item.category.contains(category!))
              .toList();
        } else if (filter != null && filter!.isNotEmpty) {
          items = itemController
              .getAll()
              .where((item) =>
                  item.name.toLowerCase().contains(filter!.toLowerCase()))
              .toList();
        } else {
          items = itemController
              .getAll()
              .where((item) => item.category.contains(category!))
              .toList();
        }

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
              commanda: commanda
            );
          },
        );
      },
    );
  }
}
