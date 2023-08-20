import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/themes/theme_provider.dart';

class ChangeThemeButton extends StatefulWidget {
  const ChangeThemeButton({super.key});

  @override
  State<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}

class _ChangeThemeButtonState extends State<ChangeThemeButton> {
  @override
  Widget build(BuildContext context) {
    
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    print(themeProvider.isDarkTheme);

    return IconButton(
        onPressed: () {
          setState(themeProvider.trocarTema);
        },
        icon:
            Icon(themeProvider.isDarkTheme ? Icons.sunny : Icons.nights_stay));
  }
}
