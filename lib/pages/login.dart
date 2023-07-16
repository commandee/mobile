// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';
import 'package:teste/components/form_textfield.dart';
import 'package:teste/components/square_tile_login.dart';
import 'package:teste/constants.dart';
import 'package:teste/pages/forgot_password.dart';
import 'package:teste/pages/register.dart';

//import 'home.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controllers do textfield
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //função para abrir o dialog
    Future openDialog() => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              "Email ou senha inválidos!",
              style: TextStyle(
                color: textoLight,
              ),
            ),
            content: TextButton(
              child: Text(
                "Voltar",
                style: TextStyle(color: primaryLight, fontSize: 16),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        );

    //funcionalidade do botão
    void logarUsuario() {
      if (emailcontroller.text == email && passwordcontroller.text == senha) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return MyHomePage();
        }));
      } else {
        openDialog();
      }
    }

    return Scaffold(
      backgroundColor: fundoLight,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/illustration.png",
                  height: 210,
                  width: 210,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Bem-Vinde de volta!",
                  style: TextStyle(
                    color: textoLight,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "nós do Commandee sentimos sua falta!",
                    style: TextStyle(
                      color: textoLight,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MyTextfield(
                  icone: Icons.email_outlined,
                  controller: emailcontroller,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextfield(
                  icone: Icons.fingerprint_outlined,
                  controller: passwordcontroller,
                  hintText: "Senha",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                            color: primaryLight,
                            fontSize: 12,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ForgotPasswordPage();
                          }));
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //botão de login
                Button(
                  text: "Entrar",
                  cortexto: Colors.white,
                  corFundo: accentLight,
                  margin: 25,
                  onTap: logarUsuario,
                ),
                const SizedBox(
                  height: 35,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: textoLight,
                        thickness: 0.3,
                        indent: 40,
                        endIndent: 5,
                      ),
                    ),
                    Text("Ou entre com", style: TextStyle(color: textoLight)),
                    Expanded(
                      child: Divider(
                        color: textoLight,
                        thickness: 0.3,
                        indent: 5,
                        endIndent: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: "assets/images/google.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    SquareTile(imagePath: "assets/images/twitter.png")
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Não tem uma conta?",
                      style: TextStyle(color: textoLight)),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      child: const Text("Registre-se aqui!",
                          style: TextStyle(
                              color: primaryLight,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      })
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
