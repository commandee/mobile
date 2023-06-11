import 'package:flutter/material.dart';
import 'package:teste/pages/cardapio.dart';
import 'package:teste/pages/profile.dart';

import '../components/comanda.dart';

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
        backgroundColor: Colors.grey,
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
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/comanda');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
      ));
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
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

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24.0),
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
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            )
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_outlined),
            title: const Text("Cardápio"),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CardapioPage(),
              ),
            )
          ),
          const Divider(
            height: 1,
            thickness: 1,
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
