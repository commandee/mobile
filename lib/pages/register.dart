import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';
import 'package:teste/components/my_textfield.dart';
import 'package:teste/constants.dart';
import 'package:teste/pages/home.dart';
import 'package:teste/pages/login.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final namecontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void cadastrarUsuario() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MyHomePage();
      }));
    }

    return Scaffold(
      backgroundColor: fundoClaro,
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
                const Text(
                  "Trabalhe com o Commandee",
                  style: TextStyle(
                    color: texto,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "para começar, insira seus dados abaixo:",
                  style: TextStyle(
                    color: texto,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextfield(
                    icone: Icons.person,
                    controller: namecontroller,
                    hintText: "Nome",
                    obscureText: false),
                const SizedBox(
                  height: 10,
                ),
                MyTextfield(
                    icone: Icons.person_outline_outlined,
                    controller: usernamecontroller,
                    hintText: "Nome de Usuário",
                    obscureText: false),
                const SizedBox(
                  height: 10,
                ),
                MyTextfield(
                    icone: Icons.email_outlined,
                    controller: emailcontroller,
                    hintText: "Email",
                    obscureText: false),
                const SizedBox(
                  height: 10,
                ),
                MyTextfield(
                    icone: Icons.fingerprint_outlined,
                    controller: passwordcontroller,
                    hintText: "Senha",
                    obscureText: true),
                const SizedBox(
                  height: 20,
                ),
                Button(
                    onTap: cadastrarUsuario,
                    text: "Cadastrar",
                    cortexto: Colors.white,
                    corFundo: accent,
                    margin: 25),

                const SizedBox(height: 30,),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Já tem uma conta?",
                      style: TextStyle(color: texto)),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      child: const Text("Login",
                          style: TextStyle(
                              color: primary, fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
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
