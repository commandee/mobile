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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0))),
          onPressed: () {
            setState(() => _value = value - 1 >= 0 ? value - 1 : 0);
            widget.onChanged?.call(_value);
          },
          child: Icon(Icons.minimize_rounded)),
      SizedBox(
        height: 13.0,
        width: 40.0,
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0))),
          onPressed: () {
            setState(() => _value = value + 1 <= 99 ? value + 1 : 99);
            widget.onChanged?.call(_value);
          },
          child: Icon(Icons.add)),
    ]);
  }
}
