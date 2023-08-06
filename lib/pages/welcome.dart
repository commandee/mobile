import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';
import 'package:teste/constants.dart';
import 'package:teste/pages/login.dart';
import 'package:teste/pages/register.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void entrarLogin() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
    }

    void entrarCadastro() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return RegisterPage();
      }));
    }

    return Scaffold(
      backgroundColor: fundoLM,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
                      children: [
                        Spacer(),
                        Image.asset(
                          "assets/images/illustration.png",
                          height: 358,
                          width: 358,
                        ),
                        
                        const Text(
                          "Bem-vinde ao Commandee!",
                          style: TextStyle(
                            color: textoLM,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                            "Transformando seu trabalho em uma experiência incrível",
                            style: TextStyle(
                              color: cinzaLM,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center
                        ),
                        Spacer(flex: 3,),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Entre com",
                            style: TextStyle(
                              color: cinzaLM,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SubmitButton(
                            onTap: entrarLogin,
                            text: "Login",
                            cortexto: textoDM,
                            corFundo: primary,
                            fontWeight: FontWeight.bold),
                        const SizedBox(
                          height: 8,
                        ),
                        SubmitButton(
                          onTap: entrarCadastro,
                          text: "Cadastro",
                          cortexto: textoLM,
                          corFundo: secondaryLM,
                          fontWeight: FontWeight.normal,
                        ),
                
                        Spacer(),
                      ],
                    ),
      ),
                        

    );
  }
}
