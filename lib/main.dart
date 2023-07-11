import 'package:flutter/material.dart';
import 'package:olx_clone/Screen1.dart ';
import 'package:olx_clone/Screen2.dart';
import 'package:olx_clone/Screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OLx_CLone',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFE1E8F0)),
      initialRoute: '/',
      routes:{
        '/':(context) => Screen1(),
        '//':(context) => Screen2(),
        '////':(context) => Screen4(),

      }
    );
  }
}

