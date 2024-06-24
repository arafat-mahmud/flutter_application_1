import 'package:flutter/material.dart';

void main() => runApp(const CB());

class CB extends StatelessWidget {
  const CB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Checkbox')),
        body: const Center(
          child: CheckBox(),
        ),
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getFillColor(Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey;
      } else if (isChecked) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isChecked ? 'Checked' : 'Unchecked',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isChecked ? Colors.green : Colors.red,
          ),
        ),
        const SizedBox(height: 8),
        Checkbox(
          checkColor: Colors.white,
          fillColor: WidgetStateProperty.resolveWith(getFillColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
      ],
    );
  }
}
