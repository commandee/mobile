// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:teste/model/employee.dart';
import 'package:teste/view/choose_restaurant.dart';
import 'package:teste/widgets/big_button.dart';
import 'package:teste/widgets/form_textfield.dart';
import 'package:teste/view/forgot_password.dart';
import 'package:teste/view/register.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controllers do textfield
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Theme.of(context).colorScheme.onBackground,
          onPressed: () {
            Navigator.popUntil(context,
                ModalRoute.withName('/')); //faz retornar a pagina home do MyApp
          },
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Entrar com uma conta",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "nós do Commandee sentimos sua falta!",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),

                Spacer(),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        MyTextfield(
                          icone: Icons.email_outlined,
                          controller: emailcontroller,
                          labelText: "Email",
                          obscureText: false,
                          tipoDoTeclado: TextInputType.emailAddress,
                          validator: (value) => value!.isEmpty
                              ? 'Por favor, digite um email válido'
                              : null,
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
                            validator: (value) => value!.isEmpty
                                ? 'Por favor, digite uma senha válida'
                                : null),
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
                                  color: Theme.of(context).colorScheme.tertiary,
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
                      ],
                    )),

                Spacer(),

                //botão de login
                SubmitButton(
                  text: "Entrar",
                  cortexto: Theme.of(context).colorScheme.onPrimary,
                  corFundo: Theme.of(context).colorScheme.primary,
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      logarUsuario(context);
                    }
                  },
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Não tem uma conta?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 12)),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                      child: Text("Crie aqui!",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      })
                ]),
                Spacer(),

                //divisor
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        thickness: 0.3,
                        indent: 40,
                        endIndent: 5,
                      ),
                    ),
                    Text("Ou entre com",
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                            fontSize: 12)),
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        thickness: 0.3,
                        indent: 5,
                        endIndent: 40,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 8,
                ),

                //botão de login com google

                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: Colors.grey[300],
                  ),
                  child: Image.asset(
                    "assets/images/google.png",
                    height: 72,
                  ),
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  //funcionalidade do botão
  void logarUsuario(BuildContext context) {
    for (var employee in employees) {
      if (emailcontroller.text == employee.email &&
          passwordcontroller.text == employee.password) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChooseRestaurant(
            employee: employee,
          );
        }));
        return; // Importante: sair da função após encontrar um match
      }
    }
  }
}
