// ignore_for_file: prefer_const_constructors

import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final String? errorText;
  final TextEditingController? controller;

  const MyTextField({
    super.key, 
    this.hintText, 
    required this.obscureText, 
    this.controller, 
    this.errorText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
             borderSide: BorderSide(
              color: Colors.white,
              width: 0
            ),
          ),
          errorText: errorText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2
            )
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColors.hintText
          ),
          filled: true,
          fillColor: AppColors.primary.withOpacity(0.07),
          focusColor: AppColors.primary.withOpacity(0.1)
        ),
      ),
    );
  }
}