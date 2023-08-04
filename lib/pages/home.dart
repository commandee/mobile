// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/components/add_button.dart';
import 'package:teste/pages/cardapio.dart';
import 'package:teste/pages/comandas.dart';
import 'package:teste/pages/profile.dart';

import '../constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  final List<Widget> _telas = [
    ComandasPage(),
    ProfilePage(),
    CardapioPage(),
  ];
  void _itemClicado(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AddButton(),
        backgroundColor: fundoLM,
        body: _telas[_index],
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            currentIndex: _index,
            onTap: _itemClicado,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_outlined), label: 'Comandas'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Perfil'),
              //BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Cardápio')
            ],
          ),
        ),
      );
}


/*
class BAB extends StatefulWidget {
  const BAB({Key? key}) : super(key: key);

  @override
  State<BAB> createState() => _BABState();
}

class _BABState extends State<BAB> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 10,
        color: fundoLM, //Theme.of(context).primaryColor,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.receipt_outlined),
              tooltip: 'Comandas',
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.person),
              tooltip: 'Perfil',
              onPressed: () => _onItemTapped(1),
            ),
          ],
        ));
  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: fundoLM,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: secondaryLM,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfilePic(),
                const SizedBox(height: 12),
                Text(
                  name,
                  style: TextStyle(color: textoLM, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(
                  email,
                  style: TextStyle(color: textoLM, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(1.0),
        child: Wrap(runSpacing: 16, children: [
          DropdownRestaurante(),
          Divider(
            color: Colors.grey,
            height: 0.4,
          ),
          ListTile(
            leading: const Icon(
              Icons.receipt_outlined,
            ),
            title: const Text("Comandas"),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text("Profile"),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_outlined),
            title: const Text("Cardápio"),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CardapioPage(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.grey,
            height: 0.4,
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Configurações"),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text("Sair"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ]),
      );
}*/
