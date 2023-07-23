import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';
import 'package:teste/constants.dart';
import 'package:teste/pages/login.dart';
import 'package:teste/pages/register.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void entrarLogin() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
    }

    void entrarCadastro() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return RegisterPage();
      }));
    }

    return Scaffold(
      backgroundColor: fundoLight,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/illustration.png",
                  height: 358,
                  width: 358,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Bem-vinde ao Commandee!",
                  style: TextStyle(
                    color: textoLight,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Transformando seu trabalho em uma experiência incrível",
                    style: TextStyle(
                      color: textoComplementar,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 128,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Entre com",
                    style: TextStyle(
                      color: textoComplementar,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SubmitButton(
                    onTap: entrarLogin,
                    text: "Login",
                    cortexto: textoDark,
                    corFundo: primary,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 16,
                ),
                SubmitButton(
                  onTap: entrarCadastro,
                  text: "Cadastro",
                  cortexto: textoLight,
                  corFundo: secondaryLight,
                  fontWeight: FontWeight.normal,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
