import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import 'layout/todo_app/todo_layout.dart';
import 'modulse/bmi/bmi.dart';
import 'modulse/counter/counter.dart';
import 'modulse/counter/cuibt/cuibt.dart';
import 'modulse/login/login.dart';
import 'modulse/mesenger/mesenger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_layout(),
    );
  }
}
