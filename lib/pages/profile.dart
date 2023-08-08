// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/components/profile_header.dart';
import '/constants.dart';


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
          backgroundColor: fundoDM,
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
        backgroundColor: fundoLM,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader()
            ],
          ),
        ));
  }
}
