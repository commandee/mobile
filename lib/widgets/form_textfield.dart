import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  const MyTextfield({
    super.key,
    required this.controller,
    required this.labelText,
    required this.obscureText,
    required this.icone,
    this.tipoDoTeclado,
    required this.validator,
  });

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final IconData icone;
  final TextInputType? tipoDoTeclado;
  final FormFieldValidator validator;

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      keyboardType: widget.tipoDoTeclado,
      textInputAction: TextInputAction.done,
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        ),
        prefixIcon: Icon(
          widget.icone,
          color: Theme.of(context).iconTheme.color,
        ),
        suffixIcon: widget.controller.text.isEmpty
            ? IconButton(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                onPressed: () => widget.controller.clear(),
                icon: const Icon(Icons.close),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(16.0)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.transparent)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(16.0)),
        fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
        filled: true,
      ),
    );
  }
}
