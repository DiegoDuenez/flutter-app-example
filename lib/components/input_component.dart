import 'package:flutter/material.dart';


class InputComponent extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;

  const InputComponent({
    super.key, required
    this.controller,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        cursorColor: Colors.black,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200),  borderRadius: BorderRadius.circular(5)),
            focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400), borderRadius: BorderRadius.circular(5),),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])
        ),
      ),
    );

  }

}
