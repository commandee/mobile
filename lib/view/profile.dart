// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/login_controller.dart';
import 'package:teste/model/restaurant.dart';
import 'package:teste/view/configs.dart';
import 'package:teste/view/infos.dart';
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
                        icon: Icon(Icons.info_outline, color: Theme.of(context).colorScheme.onBackground,)
                        //text: "Informações",
                        
                      ),
                      Tab(
                        icon: Icon(Icons.settings, color: Theme.of(context).colorScheme.onBackground,)
                        //text: "Configurações",
                        
                        
                      )
                    ],
                  ),
                
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    // Expanded(child: Infos(user: user)),
                    
                    Infos(user: user),
                    Configs(),
                  ],
                ),
              ),
              //botão de mudança entre config e infos
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: Container(
              //     height: 44,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       color: Theme.of(context).colorScheme.secondary,
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text('Informações e Configurações'),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20),



              //infos do usuario
             
            ],
          ),),
    );
  }
}
