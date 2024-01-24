import 'package:flutter/material.dart';
import 'package:olx_clone/ui/chat_page.dart';
import 'package:olx_clone/ui/home_page.dart';
import 'package:olx_clone/ui/register_page.dart';
import 'package:olx_clone/ui/signin_page.dart';
import 'package:olx_clone/ui/welcome_screen.dart';

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
        theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: const Color(0xFFE1E8F0)),
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/signinpage': (context) => const SignInScreen(),
          '/registerpage': (context) => const RegisterScreen(),
          '/home': (context) => const HomePage(),
          '/chat': (context) => const ChatScreen()
        });
  }
}
