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
      backgroundColor: fundoLight,
      drawer: const NavigationDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
            Commanda(
              nome: "Mesa 01",
              descricao: "Salada César x2, Hambúrguer, Onion Rings",
            ),
            Commanda(
              nome: "Mesa 09",
              descricao: "Hambúrguer x2, Batata Frita",
            ),
            Commanda(
              nome: "Mesa 08",
              descricao: "Suco de Maracujá, Hambúrguer",
            ),
            Commanda(
              nome: "Mesa 04",
              descricao: "Refrigerante 500ml x2, Hambúrguer, Onion Rings",
            ),
            Commanda(
              nome: "Mesa 15",
              descricao: "Sundae de Chocolate, Hambúrguer, Onion Rings",
            ),
            Commanda(
              nome: "Mesa 12",
              descricao: "Suco de laranja, Onion Rings",
            ),
            Commanda(
              nome: "Mesa 11",
              descricao: "Hambúrguer, Onion Rings, Batata Frita",
            ),
            Commanda(
              nome: "Mesa 19",
              descricao: "Hambúrguer, Onion Rings, Batata Frita",
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Criando nova comanda");
        },
        backgroundColor: accentLight,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ));
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: fundoLight,
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
        color: secondaryLight,
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
                  style: TextStyle(color: textoLight, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(
                  email,
                  style: TextStyle(color: textoLight, fontSize: 14),
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
