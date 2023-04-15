import 'package:flutter/material.dart';
import 'sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi BMI',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SignupPage(),
    );
  }
}
