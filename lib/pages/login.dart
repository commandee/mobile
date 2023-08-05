// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';
import 'package:teste/components/form_textfield.dart';
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
                color: textoLM,
              ),
              textAlign: TextAlign.center,
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: textoLM,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: fundoLM,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Entrar com uma conta",
                  style: TextStyle(
                    color: textoLM,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "nós do Commandee sentimos sua falta!",
                    style: TextStyle(
                      color: cinzaLM,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 112,
                ),
                MyTextfield(
                  icone: Icons.email_outlined,
                  controller: emailcontroller,
                  labelText: "Email",
                  obscureText: false,
                  tipoDoTeclado: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 16,
                ),
                MyTextfield(
                  icone: Icons.fingerprint_outlined,
                  controller: passwordcontroller,
                  labelText: "Senha",
                  obscureText: true,
                  tipoDoTeclado: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: 8,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Esqueceu a senha?",
                        style: TextStyle(
                          color: accentLM,
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
                const SizedBox(
                  height: 40,
                ),

                //botão de login
                SubmitButton(
                  text: "Entrar",
                  cortexto: Colors.white,
                  corFundo: primary,
                  onTap: logarUsuario,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Não tem uma conta?",
                      style: TextStyle(color: cinzaLM, fontSize: 12)),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                      child: const Text("Crie aqui!",
                          style: TextStyle(
                              color: accentLM,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      })
                ]),
                const SizedBox(
                  height: 120,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: cinzaLM,
                        thickness: 0.3,
                        indent: 40,
                        endIndent: 5,
                      ),
                    ),
                    Text("Ou entre com",
                        style: TextStyle(color: cinzaLM, fontSize: 12)),
                    Expanded(
                      child: Divider(
                        color: textoLM,
                        thickness: 0.3,
                        indent: 5,
                        endIndent: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        color: Colors.grey[300],
                      ),
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 72,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
