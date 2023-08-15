import 'package:flutter/material.dart';

class ChangeThemeButton extends StatefulWidget {
  const ChangeThemeButton({super.key});

  @override
  State<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}

bool _isDarkMode = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;


class _ChangeThemeButtonState extends State<ChangeThemeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            _isDarkMode = !_isDarkMode;
          });
        },
        icon: Icon(_isDarkMode ? _iconDark : _iconLight));
  }
}

//fazer com que após seja apertado, o ícone mude para o outro e o tema do app mude para o outro também
//como chamar isso na main?

