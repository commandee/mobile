import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';
import 'package:teste/components/form_textfield.dart';
import 'package:teste/constants.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: primary,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.help_outline_outlined,
              color: textoLM,
            ),
          ),
        ],
      ),
      backgroundColor: fundoLM,
      body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    "Esqueceu a senha?",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: textoLM),
                  ),
                  const Text(
                    'Coloque o email vinculado a sua conta e mandaremos as instruções para recuperar sua senha',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          cinzaLM, // Substitua "textoComplementar" pela cor desejada ou defina a variável.
                    ),
                  ),
                  const SizedBox(
                    height: 104,
                  ),
                  MyTextfield(
                    icone: Icons.email_outlined,
                    controller: emailcontroller,
                    labelText: "Email",
                    obscureText: false,
                    tipoDoTeclado: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SubmitButton(
                      onTap: () {},
                      text: "Enviar Instruções",
                      cortexto: textoDM,
                      corFundo: primary,
                      fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 300,
                  ),
                  Text("Progressão")
                ],
              ),
            ),
          ),
        ),
    );
  }
}
