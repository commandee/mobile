import 'package:flutter/material.dart';
import 'package:teste/model/employee.dart';

class LoginController with ChangeNotifier {
  Employee? _loggedUser;
  get loggedUser => _loggedUser;

  bool login(String email, String senha) {
    for (final employee in employees) {
      if (employee.email == email) {
        if (employee.password == senha) {
          return true;
        } else {
          throw Exception("Senha incorreta!");
        }
      }
    }

    throw Exception("Usuário não encontrado!");
  }
}