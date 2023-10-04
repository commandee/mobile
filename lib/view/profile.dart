// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/login_controller.dart';
import 'package:teste/model/employee.dart';
import 'package:teste/widgets/profile/profile_header.dart';
import 'package:teste/widgets/profile/profile_info_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginController>(context, listen: false);
    
    final user = loginProvider.loggedUser ?? Employee(id: 7, username: "nome de usuário", email: "email@email.com", password: "senha");

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text('Perfil'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                loginProvider.logout();
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
            child: Column(
          children: [
            ProfileHeader(
              name: user.username,
              userName: user.username,
            ),

            SizedBox(height: 16),

            //botão de mudança entre config e infos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Informações e Configurações'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            //infos do usuario
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Informações',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                      color: Theme.of(context).colorScheme.secondary,
                      child: Column(
                        children: [
                          InfoTile(
                            icone: Icons.mail_outline_outlined,
                            informacao: user.email,
                          ),
                          InfoTile(
                            icone: Icons.person_outline_outlined,
                            informacao: user.username,
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.local_restaurant_outlined,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            title: Text('Restaurante 1'),
                            trailing: Icon(
                              Icons.keyboard_arrow_down,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            onTap: () {},
                          )
                        ],
                      )),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Relatórios',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Container(
                        color: Theme.of(context).colorScheme.secondary,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.pending_actions_outlined,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              title: Text('Commandas concluídas'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                              onTap: () {},
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
