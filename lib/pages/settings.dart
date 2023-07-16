import 'package:flutter/material.dart';
import 'package:teste/constants.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool valNotif1 = false;

  bool valNotif2 = false;

  bool valNotif3 = false;

  trocarTema(bool newValue1) {
    setState(() {
      valNotif1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotif2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotif3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.person_outlined,
                    color: primaryLight,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Conta",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: textoLight),
                  )
                ],
              ),
             const Divider(
                height: 20,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              buildAccountOption(context, "Mudar senha"),
              buildAccountOption(context, "Privacidade"),
              buildAccountOption(context, "Notificações"),
              buildAccountOption(context, "Idioma"),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: primaryLight,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Opções",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: textoLight),
                  )
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
              ),
              buildNotifOption("Dark Mode", valNotif1, trocarTema),
              buildNotifOption("Notificações", valNotif2, onChangeFunction2),
              buildNotifOption("Opção 3", valNotif3, onChangeFunction3),
            ])));
  }
}

Padding buildNotifOption(String title, bool value, Function onChangeMethod) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 18, color: textoLight)),
        Transform.scale(
          scale: 0.7,
          child: Switch(
            value: value,
            onChanged: (bool newValue) {
              onChangeMethod(newValue);
            },
            activeColor: primaryLight,
            activeTrackColor: primaryLight,
            inactiveThumbColor: secondaryLight,
            inactiveTrackColor: secondaryLight,
          ),
        )
      ],
    ),
  );
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Opção 1"),
                    Text("Opção 2"),
                    Text("Opção 3"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Fechar"))
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, color: textoLight),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: textoLight,
            )
          ],
        ),
      ));
}
