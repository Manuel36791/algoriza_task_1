import 'package:algoriza_task_1/pages/first_splash_screen/onboarding_screen.dart';
import 'package:algoriza_task_1/pages/login_screen/login_screen.dart';
import 'package:algoriza_task_1/pages/register_screen/register_screen.dart';
import 'package:algoriza_task_1/pages/second_splash_screen/second_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterScreen(),
    );
  }
}
