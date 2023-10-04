import 'package:flutter/material.dart';
import 'package:teste/widgets/big_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void entrarLogin() {
      Navigator.pushNamed(context, '/login');
    }

    void entrarCadastro() {
      Navigator.pushNamed(context, '/register');
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  "assets/images/illustration.png",
                  height: 358,
                  width: 358,
                ),
                Text(
                  "Bem-vinde ao Commandee!",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text("Transformando seu trabalho em uma experiência incrível",
                    style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurfaceVariant,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center),
                const Spacer(
                  flex: 3,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Entre com",
                    style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurfaceVariant,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ExpansiveButton(
                    onTap: entrarLogin,
                    text: "Login",
                    cortexto: Theme.of(context).colorScheme.onPrimary,
                    corFundo: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 8,
                ),
                ExpansiveButton(
                  onTap: entrarCadastro,
                  text: "Cadastro",
                  cortexto: Theme.of(context).colorScheme.onSurface,
                  corFundo: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
