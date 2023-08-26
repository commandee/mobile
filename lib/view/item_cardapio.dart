import 'package:flutter/material.dart';
import 'package:teste/model/item.dart';
import 'package:teste/widgets/big_button.dart';

class ItemCardapioPage extends StatelessWidget {
  const ItemCardapioPage({super.key, required this.item});

  final Item item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/cardapio');
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              item.image,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              color: Theme.of(context).appBarTheme.backgroundColor,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      item.name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimary),
                    )),
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      'R\$${item.price.toString()}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                'Ingredientes',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's .",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).colorScheme.onSurface),
                ),
              ),
                  
              Text('Anotações', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface),),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ex: sem cebola',
                    prefixIcon: Icon(Icons.note_add),
                  ),
                ),
              ),
                ],
              ),
            ),
            
            SizedBox(height: 20,),
      
            SubmitButton(
                    onTap: () {},
                    text: 'Adicionar à comanda',
                    cortexto: Theme.of(context).colorScheme.onPrimary,
                    corFundo: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
          ],
        ),
      ),
    );
  }
}
