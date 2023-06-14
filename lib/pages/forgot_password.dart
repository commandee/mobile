import 'package:flutter/material.dart';
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
      ),
      backgroundColor: fundoClaro,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Esqueceu a senha?",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: texto),
            ),
            const Text("Não se preocupe, vamos te ajudar!",
                style: TextStyle(
                  fontSize: 16,
                  color: primary,
                )),
            const SizedBox(
              height: 20,
            ),

            MyTextfield(
              icone: Icons.email_outlined,
              controller: emailcontroller,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Insira seu e-mail cadastrado para receber um link de recuperação.",
                style: TextStyle(
                  fontSize: 16,
                  color: texto,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Enviar"),
              style: ElevatedButton.styleFrom(
                backgroundColor: accent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                minimumSize: const Size(200, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
