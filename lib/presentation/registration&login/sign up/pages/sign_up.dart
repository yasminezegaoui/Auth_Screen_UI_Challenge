// ignore_for_file: prefer_const_constructors

import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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