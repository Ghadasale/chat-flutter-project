import 'package:flutter/material.dart';
import 'package:project/pages/Welcome.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:"/" ,
      routes: {

        "/":(context)=> const Welcome(),
        "/login":(context)=> const Login(),
        "/signup":(context)=> const Signup(),
      },
    );
  }
}