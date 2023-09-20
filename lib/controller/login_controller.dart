import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginController with ChangeNotifier {
  String? _token;

  Future<String> buscarUsuario(String username) async {
    final uri = Uri.parse("http://localhost:3000/user/$username");
    final response = await http.get(uri);

    final user = jsonDecode(response.body);
    return user.email as String;
  }

  Future<bool> login(String email, String senha) async{
    final uri = Uri.parse("http://localhost:3000/user/login");
    final response = await http.post(uri, body: jsonEncode({"email": email, "password": senha}));

    switch (response.statusCode){
      case 200:
        _token = response.body;
        return true;
      case 401:
       throw Exception("Senha incorreta!");
      case 404:
        throw Exception("Email incorreto");
      default: 
        throw Exception("Erro de servidor! Tente novamente mais tarde!");
    }
  }

  Future<String> whoAmI() async {
    final uri = Uri.parse("http://localhost:3000/user/whoami");
    final response = await http.get(uri, headers: _token != null ? {
      "Authorization": _token!
    } : null);

    final user = response.body;
    return user;
  }
}