// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/controller/commanda_controller.dart';
import 'package:teste/model/commanda.dart';
import 'package:teste/view/commanda_page.dart';
import 'package:teste/widgets/add_button.dart';
import 'package:teste/view/commandas.dart';
import 'package:teste/view/profile/profile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CommandaController commandaController = CommandaController();

  int _indexTelas = 0;

  final List<Widget> _telas = [
    CommandasPage(),
    ProfilePage(),
  ];
  void _itemClicado(int index) {
    setState(() {
      _indexTelas = index;
    });
  }

  void limpaCampos() {
    _customerController.clear();
    _tableController.clear();
  }

  final _customerController = TextEditingController();
  final _tableController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: _telas[_indexTelas],
      extendBody: true,
      bottomNavigationBar: _navBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomAddButton(
        funcao: () {
          _addInfosNovaCommanda(context);
        },
      ));

  //navigation bar
  BottomAppBar _navBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: BottomNavigationBar(
        selectedIconTheme:
            Theme.of(context).bottomNavigationBarTheme.selectedIconTheme,
        elevation: 0,
        backgroundColor: Colors.transparent,
        currentIndex: _indexTelas,
        onTap: _itemClicado,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_outlined), label: 'Commandas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }

  //ninguem gosta de voce
  void _addInfosNovaCommanda(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Digite as informações:', textAlign: TextAlign.center),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _customerController,
                      decoration: InputDecoration(
                        labelText: 'Nome do Cliente',
                        suffixIcon: Icon(
                          Icons.person,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        labelStyle: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ('Por favor, digite o nome do cliente');
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _tableController,
                      decoration: InputDecoration(
                        labelText: 'Número da Mesa',
                        suffixIcon: Icon(Icons.numbers,
                            color: Theme.of(context).colorScheme.onSurface),
                        labelStyle: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, digite o número da mesa';
                        } else {
                          if ((int.parse(value) < 0) ||
                              (int.parse(value) > 999)) {
                            return ('Por favor, digite um número válido');
                          }
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancelar',
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
            ),
            TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  final commanda = Commanda(
                    customer: _customerController.text,
                    table: int.parse(_tableController.text),
                    id: DateTime.now().millisecondsSinceEpoch,
                  );

                  commandaController.create(commanda);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CommandaPage(commanda: commanda);
                      },
                    ),
                  );

                  limpaCampos();
                }
                ;
                print('adicionando treco');
              },
              child: Text(
                'Confirmar',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
          ],
        );
      },
    );
  }
}
