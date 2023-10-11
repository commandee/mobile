import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  CustomSearchBar({super.key, this.onChanged});

  final void Function(String)? onChanged;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final _textController = TextEditingController();

  String? get text => _textController.text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: TextField(
        
        controller: _textController,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          hintText: 'Pesquisar',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
