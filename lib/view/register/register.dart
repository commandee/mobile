import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/controller/login_controller.dart';
import 'package:teste/widgets/big_button.dart';
import 'package:teste/widgets/form_textfield.dart';
import 'package:teste/view/home.dart';

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
        Provider.of<LoginController>(context, listen: false).loginAsDefault();
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
            Navigator.popUntil(context,
                ModalRoute.withName('/')); //faz retornar a pagina home do MyApp
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
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),

                //formulário
                Form(
                    child: Column(
                  children: [
                    MyTextfield(
                        icone: Icons.person_outline_outlined,
                        controller: usernamecontroller,
                        labelText: "Nome de Usuário",
                        obscureText: false,
                        tipoDoTeclado: TextInputType.name,
                        validator: (value) => value!.isEmpty
                            ? 'Por favor, digite um nome de usuário'
                            : null),
                    const SizedBox(
                      height: 16,
                    ),
                    MyTextfield(
                        icone: Icons.email_outlined,
                        controller: emailcontroller,
                        labelText: "Email",
                        obscureText: false,
                        tipoDoTeclado: TextInputType.emailAddress,
                        validator: (value) => value!.isEmpty
                            ? 'Por favor, digite um email'
                            : null),
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
                            ? 'Por favor, digite uma senha'
                            : null),
                  ],
                )),

                const Spacer(),

                //botão de cadastro
                ExpansiveButton(
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
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
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
                        Navigator.of(context).pushReplacementNamed('/login');
                      })
                ]),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
