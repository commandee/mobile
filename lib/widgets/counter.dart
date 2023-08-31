import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _value = 0;
  int get value => _value;

  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    inputController.value = TextEditingValue(text: _value.toString());

    return Row(children: [
      ElevatedButton(
          onPressed: () =>
              setState(() => _value = value - 1 >= 0 ? value - 1 : 0),
          child: Icon(Icons.minimize_rounded)),
      SizedBox(
        height: 13.0,
        width: 40.0,
        child: TextField(
          controller: inputController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (value) => setState(() => _value = int.parse(value)),
        ),
      ),
      ElevatedButton(
          onPressed: () =>
              setState(() => _value = value + 1 <= 99 ? value + 1 : 99),
          child: Icon(Icons.add)),
    ]);
  }
}
