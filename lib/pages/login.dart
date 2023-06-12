// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/components/login_button.dart';
import 'package:teste/components/my_textfield.dart';
import 'package:teste/components/square_tile_login.dart';
import 'package:teste/constants.dart';

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
                color: texto,
              ),
            ),
            content: TextButton(
              child: Text(
                "Voltar",
                style: TextStyle(color: primary, fontSize: 16),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        );

    //funcionalidade do botão
    void logarUsuario() {
      if (emailcontroller.text == "" && passwordcontroller.text == "") {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return MyHomePage();
        }));
      } else {
        openDialog();
      }
    }

    return Scaffold(
      backgroundColor: fundoClaro,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),

                Text(
                  "Bem-Vindo de volta!",
                  style: TextStyle(
                    color: texto,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "nós do Commandee sentimos falta!",
                    style: TextStyle(
                      color: texto,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                MyTextfield(
                  controller: emailcontroller,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextfield(
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
                      Text(
                        "Esqueceu a senha?",
                        style: TextStyle(
                          color: primary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //botão de login
                LoginButton(
                  onTap: logarUsuario,
                ),
                const SizedBox(
                  height: 45,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: texto,
                        thickness: 0.3,
                        indent: 40,
                        endIndent: 5,
                      ),
                    ),
                    Text("Ou entre com", style: TextStyle(color: texto)),
                    Expanded(
                      child: Divider(
                        color: texto,
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
                    SquareTile(ImagePath: "assets/images/google.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    SquareTile(ImagePath: "assets/images/linkedin.png")
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Não tem uma conta?",
                      style: TextStyle(color: texto)),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Registre-se aqui!",
                      style: TextStyle(
                          color: primary, fontWeight: FontWeight.bold)),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
