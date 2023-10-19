import 'package:flutter/material.dart';
import 'package:teste/api.dart';
import 'package:teste/model/employee.dart';
import 'package:teste/model/restaurant.dart';

class LoginController with ChangeNotifier {
  Employee? _loggedUser;
  Restaurant? _restaurant;
  String? _token;

  Employee? get loggedUser => _loggedUser;
  Restaurant? get restaurant => _restaurant;
  String? get token => _token;

  Future<bool> login(String email, String senha) async {
    final response = await api
        .post('/user/login', data: {"email": email, "password": senha});

    switch (response.statusCode) {
      case 200:
        _loggedUser = Employee.fromMap(response.data);
        _restaurant = response.data.containsKey("restaurant")
            ? Restaurant.fromMap(response.data["restaurant"])
            : null;
        return true;
      case 401:
        throw Exception("Senha incorreta");
      case 404:
        throw Exception("Usuário não encontrado");
      default:
        throw Exception(
            "Ocorreu um erro em nosso servidor! Tente novamente mais tarde!");
    }
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
