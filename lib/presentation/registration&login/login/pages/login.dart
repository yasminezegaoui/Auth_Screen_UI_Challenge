// ignore_for_file: prefer_const_constructors

import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Stack(
        children: [
          _buildBg(),
          _buildFg()
        ],
      ),
    );
  }

  Widget _buildBg(){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/objects.png'),
          fit: BoxFit.cover,
        )
      ),
    );
  }

  Widget _buildFg(){
    return Column();
  }
}