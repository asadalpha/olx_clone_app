import 'package:flutter/material.dart';
import 'package:olx_clone/ui/Chat_page.dart';
import 'package:olx_clone/ui/Home_page.dart';
import 'package:olx_clone/ui/Signin_page.dart';
import 'package:olx_clone/ui/Welcome_screen.dart';

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
      theme: new ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFE1E8F0)),
      initialRoute: '/',
      routes:{
        '/':(context) => WelcomeScreen(),
        '/signinpage':(context) => signInScreen(),
        '/home':(context) => HomePage(),
        '/chat':(context)=>ChatScreen()


      }
    );
  }
}

