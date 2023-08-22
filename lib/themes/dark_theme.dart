import 'package:flutter/material.dart';
import '../constants.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: branco,
      ),
    ),
    fontFamily: 'Poppins',
    colorScheme: const ColorScheme.dark(
      background: preto,
      onBackground: branco,
      onSurface: branco,
      onSurfaceVariant: Colors.white38,
      primary: primaryDM,
      onPrimary: branco,
      secondary: secondaryDM,
      tertiary: accentDM,
      outline: Colors.white30,
    ),
    primarySwatch: Colors.deepPurple,
    primaryColor: branco,
    iconTheme: const IconThemeData(
      color: branco,
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: secondaryLM),
    inputDecorationTheme: InputDecorationTheme(
      activeIndicatorBorder: BorderSide(
        color: secondaryLM,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: accentDM,
      foregroundColor: preto,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: preto,
        selectedItemColor: branco,
        unselectedItemColor: preto,
        selectedIconTheme: IconThemeData(
          color: branco,
        ),
        unselectedIconTheme: IconThemeData(
          color: preto,
        )));
