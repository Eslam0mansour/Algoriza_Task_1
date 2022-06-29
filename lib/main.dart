import 'package:algoriza_task_1/Onboarding/Onboarding.dart';
import 'package:algoriza_task_1/auth/login.dart';
import 'package:algoriza_task_1/auth/register.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      initialRoute: 'Intro',
      routes: {
        'Intro' :(context) => const Onboarding(),
        'login' :(context) => const Login(),
        'Register' :(context) => const Register()
      },
    );
  }
}
