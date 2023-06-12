// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/pages/cardapio.dart';
import 'package:teste/pages/profile.dart';

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
      drawer: const NavigationDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
            Commanda(
              nome: "Mesa 12",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 09",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 08",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 12",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 12",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 12",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 12",
              descricao: "Informação extra",
            ),
            Commanda(
              nome: "Mesa 12",
              descricao: "Informação extra",
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: accent,
      ));
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: fundoClaro,
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
        color: secondary,
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
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(img),
                ),
                const SizedBox(height: 12),
                Text(
                  "Nome do usuário",
                  style: TextStyle(color: texto, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(
                  "Email do usuário",
                  style: TextStyle(color: texto, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(1.0),
        child: Wrap(runSpacing: 16, children: [
          ListTile(
            leading: const Icon(Icons.receipt_outlined),
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
                  builder: (context) => const CardapioPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Configurações"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text("Sair"),
            onTap: () {},
          ),
        ]),
      );
}
