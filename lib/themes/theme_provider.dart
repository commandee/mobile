import 'package:flutter/material.dart';
import 'package:teste/themes/dark_theme.dart';

import 'light_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _temaAtual = lightTheme;
  ThemeData get temaAtual => _temaAtual;
  bool get isDarkTheme => _temaAtual == darkTheme;

  ThemeProvider(Brightness defaultBrightness) : super() {
    if (defaultBrightness == Brightness.dark)
      trocarTema();
  }

  void trocarTema() {
    if (_temaAtual == lightTheme) {
      _temaAtual = darkTheme;
      print("Tema escuro");
    } else {
      _temaAtual = lightTheme;
      print("Tema claro");
    }

    notifyListeners();
  }
}
