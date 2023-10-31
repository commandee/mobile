import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, this.onChanged, this.initialValue});
  final void Function(int)? onChanged;
  final int? initialValue;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _value = 0;
  int get value => _value;

  final inputController = TextEditingController();

  @override
  void initState() {
    _value = widget.initialValue ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    inputController.value = TextEditingValue(text: _value.toString());

    return Row(children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder()),
          onPressed: () {
            setState(() => _value = value - 1 >= 1 ? value - 1 : 1);
            widget.onChanged?.call(_value);
          },
          child: Text("-", style: TextStyle(fontSize: 24),),),
      SizedBox(
        height: 2.0,
        width: 30.0,
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          textAlign: TextAlign.center,
          controller: inputController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (value) => setState(() => _value = int.parse(value)),
        ),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
              shape: CircleBorder()),
          onPressed: () {
            setState(() => _value = value + 1 <= 99 ? value + 1 : 99);
            widget.onChanged?.call(_value);
          },
          child: Icon(Icons.add)),
    ]);
  }
}
