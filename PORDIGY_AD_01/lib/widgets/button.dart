import 'package:cal_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {required this.label,
      this.textColor = const Color.fromARGB(255, 255, 255, 255),
      super.key});
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context,listen: false).setValue(label),
      child: Material(
        elevation: 3,
        color: const Color.fromARGB(255, 81, 80, 80),
        borderRadius: const BorderRadius.all(
          Radius.circular(35),
        ),
        child: CircleAvatar(
          radius: 37,
          backgroundColor: const Color.fromARGB(255, 47, 54, 57),
          child: Text(label,
              style: TextStyle(
                color: textColor,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              )),
        ),
      ),
    );
  }
}
