// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste/components/info_textfield.dart';
import '/constants.dart';

import '../components/foto_perfil.dart';

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
          leading: BackButton(
            color: primaryLight,
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: fundoLight,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          //topo
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 35), child: imageBanner()),
              Positioned(top: 150, child: ProfilePic()),
            ],
          ),

          //textinho
          Column(
            children: [
              const SizedBox(height: 20),
              Text(name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textoLight)),
              const SizedBox(height: 5),
              Text(userName,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600])),
              const SizedBox(height: 20),
              Divider(
                height: 1,
                thickness: 1,
              ),
            ],
          ),

          const SizedBox(
            height: 50,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text("Minhas informações",
                style: TextStyle(
                    fontSize: 16,
                    color: textoLight,
                    fontWeight: FontWeight.bold)),
          ),
          InfoTextField(
            text: userName,
            sectionName: "Nome de usuário",
          ),
          InfoTextField(
            text: name,
            sectionName: "Nome completo",
          ),
          InfoTextField(
            text: email,
            sectionName: "E-mail",
          ),
        ],
      ),
    );
  }

  Widget imageBanner() => Container(
        color: secondaryLight,
        height: 200,
      );
}
