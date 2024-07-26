// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pages/landing.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          minimumSize: Size(280, 50),
        ),
        child: Text(
          'Sign in',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Landing(),
            ),
          );
        },
      ),
    );
  }
}
