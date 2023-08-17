import 'package:flutter/material.dart';
import 'package:teste/components/big_button.dart';
import 'package:teste/components/form_textfield.dart';
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
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MyHomePage();
      }));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Theme.of(context).colorScheme.onBackground,
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/')); //faz retornar a pagina home do MyApp
          },
        ),
      ),

      //corpo da página
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
                  "Criar uma conta",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "para começar, insira seus dados abaixo:",
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurfaceVariant,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),

                //formulário
                Form(
                    child: Column(
                  children: [
                    MyTextfield(
                        icone: Icons.person,
                        controller: namecontroller,
                        labelText: "Nome",
                        obscureText: false,
                        tipoDoTeclado: TextInputType.name),
                    const SizedBox(
                      height: 16,
                    ),
                    MyTextfield(
                        icone: Icons.person_outline_outlined,
                        controller: usernamecontroller,
                        labelText: "Nome de Usuário",
                        obscureText: false,
                        tipoDoTeclado: TextInputType.name),
                    const SizedBox(
                      height: 16,
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
                  ],
                )),

                const Spacer(),

                //botão de cadastro
                SubmitButton(
                    onTap: cadastrarUsuario,
                    text: "Cadastrar",
                    cortexto: Theme.of(context).colorScheme.onPrimary,
                    corFundo: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 8,
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Já tem uma conta?",
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant,
                          fontSize: 12)),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                      child: Text("Faça login aqui",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      })
                ]),
                const Spacer(flex: 2,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
