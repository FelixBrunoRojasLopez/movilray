import 'package:flutter/material.dart';

class MyInputText extends StatelessWidget{
  final dynamic controller;
  final String hintText;
  final bool obscureText;
  const MyInputText({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller, 
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color:  Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ), 
          fillColor: const Color.fromRGBO(236, 236, 236, 1),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
  
}