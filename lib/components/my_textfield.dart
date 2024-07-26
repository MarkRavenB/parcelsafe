// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscuretext;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextField(
        obscureText: obscuretext,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(40),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
        ),
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }
}
