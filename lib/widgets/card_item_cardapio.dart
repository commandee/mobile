import 'package:flutter/material.dart';
import 'package:teste/model/item.dart';

class CardCardapioFood extends StatelessWidget {
  CardCardapioFood({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
          padding: const EdgeInsets.all(8),
          height: 240,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.3)),
          ),
          child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    item.image,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        //chip de categoria
                      ],
                    ),
                    Row(
                      children: [
                        Text('R\$${item.price.toString()}'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        onTap: () {
          print("Redirecionando ao item do cardápio");
        },
      
    );
  }
}
