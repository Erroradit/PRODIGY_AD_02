import 'package:cal_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EqualButton extends StatelessWidget {
  const EqualButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>  Provider.of<CalculatorProvider>(context,listen: false).setValue("="),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(40)),
        height: 170,
        width: 65,
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(fontSize: 45, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
