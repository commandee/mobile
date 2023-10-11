// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/login_controller.dart';
import 'package:teste/model/restaurant.dart';
import 'package:teste/view/profile/configs.dart';
import 'package:teste/view/profile/infos.dart';
import 'package:teste/widgets/profile/profile_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  Restaurant? restaurante;

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginController>(context, listen: false);

    final user = loginProvider.loggedUser!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
        body: Column(
          children: [
            ProfileHeader(
              name: user.username,
              userName: user.username,
            ),

            //tabbar
            SizedBox(
              height: 50,
              child: TabBar(
                indicatorColor: Theme.of(context).colorScheme.primary,
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.info_outline,
                    color: Theme.of(context).colorScheme.onBackground,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.settings_outlined,
                    color: Theme.of(context).colorScheme.onBackground,
                  ))
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Infos(user: user),
                  Configs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
