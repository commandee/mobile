import 'package:flutter/material.dart';
import 'package:teste/components/chip_filters.dart';

class CardapioPage extends StatefulWidget {
  const CardapioPage({super.key});

  @override
  State<CardapioPage> createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cardápio'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Filtros(),
            Expanded(
              child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  children: [
                    for (int i = 0; i < 10; i++)
                      itemFood("Suco de Laranja", "assets/images/suco.jpg",
                          "R\$ 13,99"),
                  ]),
            ),
          ],
        ));
  }

  itemFood(String title, String img, String price) => InkWell(
        child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(8),
          height: 200,
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
                  img,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 3,
              ),
              Text(price, style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
        onTap: () {
          print("Redirecionando ao item do cardápio");
        },
      );
}
