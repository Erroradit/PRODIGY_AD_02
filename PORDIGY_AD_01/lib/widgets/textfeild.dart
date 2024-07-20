import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key, required this.controller,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: TextField(
        //textDirection: TextDirection.rtl,
        controller: controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
          //focusedBorder: OutlineInputBorder(),
          fillColor: Color.fromARGB(255, 244, 236, 236),
          filled: true,
        ),
        style: const TextStyle(fontSize: 40),
        readOnly: true,
        autofocus: true,
        showCursor: true,
        cursorColor: Colors.blue,
      ),
    );
  }
}
