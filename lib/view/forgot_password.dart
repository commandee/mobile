import 'package:flutter/material.dart';
import 'package:teste/widgets/big_button.dart';
import 'package:teste/widgets/form_textfield.dart';

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
          color: Theme.of(context).colorScheme.onBackground,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Como recuperar sua senha?',
                        textAlign: TextAlign.center,
                      ),
                      content: const Text(
                          "Coloque o email vinculado a sua conta e mandaremos as instruções para recuperar sua senha", textAlign: TextAlign.start,),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Fechar',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                        )
                      ],
                    );
                  });
            },
            icon: Icon(
              Icons.help_outline_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
         physics: NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Text(
                  'Coloque o email vinculado a sua conta e mandaremos as instruções para recuperar sua senha',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(
                        0.5), // Substitua "textoComplementar" pela cor desejada ou defina a variável.
                  ),
                ),
                const Spacer(),
                MyTextfield(
                  icone: Icons.email_outlined,
                  controller: emailcontroller,
                  labelText: "Email",
                  obscureText: false,
                  tipoDoTeclado: TextInputType.emailAddress,
                  validator: (value) => value!.isEmpty
                      ? 'Por favor, digite seu email'
                      : null
                ),
                const SizedBox(
                  height: 40,
                ),
              
                //botão
                ExpansiveButton(
                    onTap: () {
                      print('Redirecionando para próxima etapa');
                    },
                    text: "Enviar Instruções",
                    cortexto: Theme.of(context).colorScheme.onPrimary,
                    corFundo: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
                const Spacer(flex: 3),
              
                //progressão
                const Text("Progressão"),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
