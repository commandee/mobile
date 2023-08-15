// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/components/profile_header.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text('Perfil'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(Icons.edit_square),
              onPressed: () {
                print('Redirecionando a pagina de alteração de perfil');
              },
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader()
            ],
          ),
        ));
  }
}
