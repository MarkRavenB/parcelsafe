// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:parcel_app/components/my_button.dart';
import 'package:parcel_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //Text
              const SizedBox(height: 30),
              Text(
                'ParcelSafe',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Galada'),
              ),
              //Login Text
              const SizedBox(height: 150),
              Text(
                'Login',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'ReadexPro'),
              ),
              //Username TextField
              const SizedBox(height: 30),
              MyTextfield(
                hintText: 'Email',
                obscuretext: false,
              ),
              //Password TextField
              const SizedBox(height: 30),
              MyTextfield(
                hintText: 'Password',
                obscuretext: true,
              ),
              //Forgot Password
              const SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ReadexPro',
                    fontSize: 12,
                  ),
                ),
              ),
              //Sign in Button
              const SizedBox(height: 20),
              MyButton(),
              //Create account
              const SizedBox(height: 20),
              Text('Dont have an account? Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
