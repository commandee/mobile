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
      primary: primary,
      onPrimary: branco,
      secondary: secondaryLM,
      tertiary: accent,
    ),

    primaryColor: primary,

    iconTheme: const IconThemeData(
      color: preto,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: accent,
      foregroundColor: branco,
    ),
    
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: preto,
      selectedItemColor: accent,
      unselectedItemColor: preto,
      selectedIconTheme: IconThemeData(
        color: accent,
      ),
      unselectedIconTheme: IconThemeData(
        color: preto,
      )

    )
    );
