// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/widgets/profile_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        //não deixa que volte a pagina de login a não ser que uma condição seja atendida
        onWillPop: () async {
          return false; // Retorna false para bloquear a ação padrão de voltar.
        },
        child: Scaffold(
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
                children: [ProfileHeader(name: 'Nome do Usuário', userName: 'nomedousuario',)
                
                //botão de mudança entre config e infos

                //infos do usuario
                
                ],
              ),
            )));
  }
}
