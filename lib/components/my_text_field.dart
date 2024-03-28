import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText ;
  final bool obsecureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF9bf6ff),),
        ),
          fillColor:  Color(0xFFc8b8db),
        filled: true,
        hintText: hintText,

        hintStyle: const TextStyle(color: Colors.white),
      )
      ,
    );
  }
}


















