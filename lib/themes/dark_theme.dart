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
      primary: primary,
      onPrimary: branco,
      secondary: secondaryDM,
      tertiary: accentDM,
    ),

    primaryColor: branco,

    iconTheme: const IconThemeData(
      color: branco,
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
      )
    )
    );
