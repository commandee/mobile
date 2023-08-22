import 'package:flutter/material.dart';
import '../constants.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: preto,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: branco,
      ),
    ),
    primarySwatch: Colors.deepPurple,
    fontFamily: 'Poppins',
    colorScheme: const ColorScheme.light(
      background: branco,
      onBackground: preto,
      onSurface: preto,
      onSurfaceVariant: Colors.black45,
      primary: primaryLM,
      onPrimary: branco,
      secondary: secondaryLM,
      tertiary: accent,
      outline: Colors.grey,
    ),
    primaryColor: primaryLM,
    iconTheme: const IconThemeData(
      color: primaryLM,
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.deepPurple),
    inputDecorationTheme: InputDecorationTheme(
      activeIndicatorBorder: BorderSide(
        color: secondaryLM,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: accent,
      foregroundColor: branco,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: preto,
        selectedItemColor: primaryLM,
        unselectedItemColor: preto,
        selectedIconTheme: IconThemeData(
          color: primaryLM,
        ),
        unselectedIconTheme: IconThemeData(
          color: preto,
        )));
