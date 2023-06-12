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
      backgroundColor: secondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/illustration.png",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Junte-se a nós!",
              style: TextStyle(
                color: texto,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Trabalhe junto com a gente!",
                style: TextStyle(
                  color: texto,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  onTap: entrarLogin,
                  text: "Login",
                  cortexto: primary,
                  corFundo: fundoClaro,
                  margin: 10,
                ),
                Button(
                  onTap: entrarCadastro,
                  text: "Cadastro",
                  cortexto: Colors.white,
                  corFundo: accent,
                  margin: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
