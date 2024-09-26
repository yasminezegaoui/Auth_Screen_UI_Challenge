// ignore_for_file: prefer_const_constructors

import 'package:auth_screen_ui_challenge/core/configs/theme/app_theme.dart';
import 'package:auth_screen_ui_challenge/presentation/home%20screen/pages/home.dart';
import 'package:auth_screen_ui_challenge/presentation/registration&login/login/pages/login.dart';
import 'package:auth_screen_ui_challenge/presentation/registration&login/sign%20up/pages/sign_up.dart';
import 'package:auth_screen_ui_challenge/presentation/welcome%20screen/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: WelcomeScreen(),
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const SignUp(),
        '/home': (context) => const Home()
      },
    );
  }
}
