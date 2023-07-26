import 'package:flutter/material.dart';

import 'package:teste/constants.dart';

class TemaProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;
}

class Temas {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: fundoDM, colorScheme: ColorScheme.dark());

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: fundoLM, colorScheme: ColorScheme.light());
}
