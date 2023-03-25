import 'package:flutter/material.dart';

var emailController = TextEditingController();
var passwordController = TextEditingController();

Widget defoultBotton({
  required double width,
  required Color background,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      color: background,
      child: MaterialButton(
        onPressed: () {
          print(emailController.text);
          print(passwordController.text);
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
