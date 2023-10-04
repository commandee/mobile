import 'package:flutter/material.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/model/item.dart';
import 'package:teste/view/item_cardapio.dart';

class CardItemCardapio extends StatelessWidget {
  CardItemCardapio({super.key, required this.item, required this.commanda});

  final Commanda commanda;
  final Item item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                item.image,
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
                //chip de categoria
          
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('R\$${item.price.toString()}'),
              ],
            )
          ],
        ),
      ),
      onTap: () {
        print("Redirecionando ao item do cardápio");
         Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return ItemCardapioPage(
                item: item,
                commanda: commanda
              );
            }));
      },
    );
  }
}
