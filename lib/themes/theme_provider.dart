

import 'package:flutter/material.dart';
import 'package:teste/themes/dark_theme.dart';

import 'light_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _temaAtual = lightTheme;

  ThemeData get temaAtual => _temaAtual;

  bool get isDarkTheme => _temaAtual == darkTheme;

  void trocarTema() {
    _temaAtual = _temaAtual == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}