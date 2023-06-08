// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '/constants.dart';

import '../components/widget-foto_perfil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(userName, style: TextStyle(color: Colors.black),), 
        centerTitle: true, 
      ),
      body: Center(
        child: Column( 
          children: [
            //fazer essa porção separada depois
            SizedBox(height: 50,),
            ProfilePic(),
            //fazer essa porção separada depois
             Text(userName, style: TextStyle(fontSize: 20),),
            
          ],
        ),
      )
    );
  }
}
