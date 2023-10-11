import 'package:flutter/material.dart';
import 'package:teste/model/employee.dart';
import 'package:teste/model/restaurant.dart';

class LoginController with ChangeNotifier {
  Employee? _loggedUser;
  Restaurant? _restaurant;

  Employee? get loggedUser => _loggedUser;

  Restaurant? get restaurant => _restaurant;

  bool login(String email, String senha) {
    for (final employee in employees) {
      if (employee.email == email) {
        if (employee.password == senha) {
          _loggedUser = employee;
          notifyListeners();
          return true;
        } else {
          throw Exception("Senha incorreta!");
        }
      }
    }

    throw Exception("Usuário não encontrado!");
  }

  bool loginToRestaurant(Restaurant restaurant) {
    if (loggedUser == null) {
      throw Exception("Você não fez login!");
    }

    if (!loggedUser!.worksAt.contains(restaurant)) {
      throw Exception("Você não trabalha neste restaurante!");
    }

    _restaurant = restaurant;

    return true;
  }

  void logout() {
    _loggedUser = null;
    notifyListeners();
  }

  void loginAsDefault() {
    _loggedUser = defaultUser;
    notifyListeners();
  }
}
