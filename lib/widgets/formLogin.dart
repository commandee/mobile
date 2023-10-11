import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/login_controller.dart';
import 'package:teste/view/register/choose_restaurant.dart';
import 'package:teste/view/register/forgot_password.dart';
import 'package:teste/widgets/big_button.dart';
import 'package:teste/widgets/form_textfield.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            MyTextfield(
              icone: Icons.email_outlined,
              controller: emailcontroller,
              labelText: "Email",
              obscureText: false,
              tipoDoTeclado: TextInputType.emailAddress,
              validator: (value) =>
                  value!.isEmpty ? 'Por favor, digite um email válido' : null,
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
            SizedBox(
              height: 36,
            ),
            ExpansiveButton(
              text: "Entrar",
              cortexto: Theme.of(context).colorScheme.onPrimary,
              corFundo: Theme.of(context).colorScheme.primary,
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  final loginControl =
                      Provider.of<LoginController>(context, listen: false);

                  try {
                    loginControl.login(emailcontroller.text.trim(),
                        passwordcontroller.text.trim());

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChooseRestaurant();
                    }));
                    //Navigator.of(context).pushReplacementNamed("/commandas");
                  } catch (e) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(e.toString()),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Ok"))
                              ],
                            ));
                  }
                } else {
                  //fodase
                  if (_formkey.currentState!.validate() == false) {
                    return ScaffoldMessenger(
                      child: AlertDialog(
                        title: Text("Email ou senha inválidos"),
                        content: Text("Verifique os campos novamente!"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Ok"))
                        ],
                      ),
                    );
                  }
                }
              },
              fontWeight: FontWeight.bold,
            ),
          ],
        ));
  }
}
