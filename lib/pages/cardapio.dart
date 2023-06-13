import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

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
                        "https://img.cybercook.com.br/receitas/441/salada-caesar-2.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "https://classic.exame.com/wp-content/uploads/2020/05/mafe-studio-LV2p9Utbkbw-unsplash-1.jpg?quality=70&strip=info&w=1024",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "https://cdn.casaeculinaria.com/wp-content/uploads/2023/01/18141914/onion-rings-1.jpg",
                        "R\$ 10,00"),
                    itemFood(
                        "Salada César",
                        "https://img.cybercook.com.br/receitas/441/salada-caesar-2.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "https://classic.exame.com/wp-content/uploads/2020/05/mafe-studio-LV2p9Utbkbw-unsplash-1.jpg?quality=70&strip=info&w=1024",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "https://cdn.casaeculinaria.com/wp-content/uploads/2023/01/18141914/onion-rings-1.jpg",
                        "R\$ 10,00"),
                    itemFood(
                        "Salada César",
                        "https://img.cybercook.com.br/receitas/441/salada-caesar-2.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "https://classic.exame.com/wp-content/uploads/2020/05/mafe-studio-LV2p9Utbkbw-unsplash-1.jpg?quality=70&strip=info&w=1024",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "https://cdn.casaeculinaria.com/wp-content/uploads/2023/01/18141914/onion-rings-1.jpg",
                        "R\$ 10,00"),
                    itemFood(
                        "Salada César",
                        "https://img.cybercook.com.br/receitas/441/salada-caesar-2.jpeg",
                        "R\$ 15,00"),
                    itemFood(
                        "Hambúrguer",
                        "https://classic.exame.com/wp-content/uploads/2020/05/mafe-studio-LV2p9Utbkbw-unsplash-1.jpg?quality=70&strip=info&w=1024",
                        "R\$ 20,00"),
                    itemFood(
                        "Onion Rings",
                        "https://cdn.casaeculinaria.com/wp-content/uploads/2023/01/18141914/onion-rings-1.jpg",
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
                child: Image.network(
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
