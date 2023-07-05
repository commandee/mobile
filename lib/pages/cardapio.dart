import 'package:flutter/material.dart';
import 'package:teste/components/filtros.dart';

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //filtros
            Filtros(),

            //cardapio

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  children: [
                    itemFood(
                        "Salada César",
                        "assets/images/salada.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "assets/images/hamburguer.png",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "assets/images/cebolafrita.jpg",
                        "R\$ 10,00"),
                   itemFood(
                        "Salada César",
                        "assets/images/salada.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "assets/images/hamburguer.png",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "assets/images/cebolafrita.jpg",
                        "R\$ 10,00"),
                   itemFood(
                        "Salada César",
                        "assets/images/salada.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "assets/images/hamburguer.png",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "assets/images/cebolafrita.jpg",
                        "R\$ 10,00"),
                   itemFood(
                        "Salada César",
                        "assets/images/salada.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "assets/images/hamburguer.png",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "assets/images/cebolafrita.jpg",
                        "R\$ 10,00"),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  itemFood(String title, String img, String price) => InkWell(
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(8),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5),
            ],
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
