import 'package:flutter/material.dart';
import 'package:teste/themes/theme_provider.dart';

class Configs extends StatefulWidget {
  const Configs({super.key});

  @override
  State<Configs> createState() => _ConfigsState();
}

class _ConfigsState extends State<Configs> {
   
  bool notifications = false;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Configurações",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 4),
            Container(
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Column(
                children: [
                  SwitchListTile(
                    value: notifications,
                    activeColor: Theme.of(context).colorScheme.primary,
                    title: const Text("Notificações"),
                    secondary: Icon(
                      Icons.notifications_none_outlined,
                      size: 28,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onChanged: (bool value) {
                      print("notificações ativadas");
                      setState(() {
                        notifications = value;
                      });
                    },
                  ),

                //nem precisa disso mas enfim
                SwitchListTile(
                  value: isDarkMode,
                  activeColor: Theme.of(context).colorScheme.primary,
                  title: const Text("Modo escuro"),
                  secondary: Icon(
                    Icons.dark_mode_outlined,
                    size: 28,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onChanged: (bool value) {
                    print("modo escuro ativado");
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
