// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/components/dropdown_resturantes.dart';
import 'package:teste/components/foto_perfil.dart';
import 'package:teste/pages/cardapio.dart';
import 'package:teste/pages/login.dart';
import 'package:teste/pages/profile.dart';
import 'package:teste/pages/settings.dart';

import '../components/comanda.dart';
import '../constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Comandas'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AddButton(),
        bottomNavigationBar: const BAB(),
        backgroundColor: fundoLM,
        drawer: const NavigationDrawer(),
        body: Center(
          child: ListView(children: [
            Commanda(
              nome: "Comanda #157",
              descricao: "Salada César x2, Hambúrguer, Onion Rings",
            ),
          ]),
        ),
      );
}

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: accentLM,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}

class BAB extends StatelessWidget {
  const BAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: primary,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline,
              color: textoDM,
            ),
            iconSize: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.receipt_outlined,
                color: textoDM,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_book_outlined,
                color: textoDM,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout_outlined,
                color: textoDM,
              )),
        ],
      ),
    );
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
}
