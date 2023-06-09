import 'package:flutter/material.dart';
import 'package:teste/pages/profile.dart';
import 'package:teste/pages/settings.dart';

import '../components/header_drawer.dart';
import 'cardapio.dart';
import 'comandas.dart';
import 'logout.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var paginaAtual = DrawerSections.comandas;

  @override
  Widget build(BuildContext context) {
    var container;

    switch (paginaAtual) {
      case DrawerSections.comandas:
        container = ComandasPage();
        break;
      case DrawerSections.cardapio:
        container = CardapioPage();
        break;
      case DrawerSections.profile:
        container = ProfilePage();
        break;
      case DrawerSections.settings:
        container = SettingsPage();
        break;
      case DrawerSections.logout:
        container = LogoutPage();
        break;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderDrawer(),
                DrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        //mostra os itens do menu
        children: [
          menuItem(1, "Comandas", Icons.list_alt_outlined,
              paginaAtual == DrawerSections.comandas ? true : false),
          menuItem(2, "Cardápio", Icons.dashboard_outlined, paginaAtual == DrawerSections.cardapio ? true : false),
          menuItem(3, "Profile", Icons.people_alt_outlined,
              paginaAtual == DrawerSections.profile ? true : false),
          Divider(),
          menuItem(4, "Settings", Icons.settings_outlined,
              paginaAtual == DrawerSections.settings ? true : false),
          menuItem(5, "Logout", Icons.logout_outlined,
              paginaAtual == DrawerSections.logout ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[200] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
          switch (id) {
            case 1:
              paginaAtual = DrawerSections.comandas;
              break;
            case 2: 
              paginaAtual = DrawerSections.cardapio;
              break;
            case 3:
              paginaAtual = DrawerSections.profile;
              break;
            case 4:
              paginaAtual = DrawerSections.settings;
              break;
            case 5:
              paginaAtual = DrawerSections.logout;
              break;
          }  
          });
          
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { comandas, cardapio, profile, settings, logout }
