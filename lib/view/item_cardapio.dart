import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/model/item.dart';
import 'package:teste/model/order.dart';
import 'package:teste/view/commanda_page.dart';
import 'package:teste/widgets/big_button.dart';
import 'package:teste/widgets/counter.dart';

class ItemCardapioPage extends StatefulWidget {
  ItemCardapioPage({super.key, required this.commanda, required this.item});
  final Item item;
  final Commanda commanda;

  @override
  State<ItemCardapioPage> createState() => _ItemCardapioPageState();
}

class _ItemCardapioPageState extends State<ItemCardapioPage> {
  int _quantity = 1;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void returnToCardapioPage() {
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CommandaPage(commanda: widget.commanda)));
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(
          onPressed: returnToCardapioPage
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
              widget.item.image,
              height: 350,
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
                      widget.item.name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimary),
                    )),
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      'R\$${widget.item.price.toString()}',
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  // Counter(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      widget.item.ingredients.join(', '),
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Anotações',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      controller: _controller,
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ex: Sem cebola, adicional de ovo, mais queijo....',
                        prefixIcon: Icon(Icons.note_add),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Counter(
                    initialValue: _quantity,
                    onChanged: (value) {
                      _quantity = value;
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
              width: 25,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SubmitButton(
        corFundo: Theme.of(context).colorScheme.primary,
        cortexto: Theme.of(context).colorScheme.onPrimary,
        text: "Adicionar à comanda",
        onTap: () {
          String? notes = _controller.text.trim().isNotEmpty
              ? _controller.text.trim()
              : null;

          final order =
              Order(quantity: _quantity, item: widget.item, notes: notes);
          widget.commanda.orders.add(order);
          
          Provider.of<CommandaController>(context, listen: false).notifyListeners();
          returnToCardapioPage();
        },
      ),
    );
  }
}
