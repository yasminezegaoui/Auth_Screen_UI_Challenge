// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auth_screen_ui_challenge/common/my_container.dart';
import 'package:auth_screen_ui_challenge/common/my_text_field.dart';
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
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login here',
              style: TextStyle(
                color: AppColors.primary,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 30
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Welcome back you\'ve',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
            ),
            Text(
              'been missed!',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
            ),
        
            SizedBox(height: 65,),
        
            MyTextField(
              hintText: 'Email', 
              obscureText: false,
            ),
        
            SizedBox(height: 25,),
        
            MyTextField(
              hintText: 'Password', 
              obscureText: true,
            ),

            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 35,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ElevatedButton(
                onPressed: (){}, 
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 113, vertical: 12),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                )
              ),
            ),

            SizedBox(height: 25,),

            TextButton(
              onPressed: (){
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/register', 
                  (route) => false
                );
              }, 
              child: Text(
                'Create new account',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600
                ),
              )
            ),

            SizedBox(height: 55,),

            Text(
              'Or continue with',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600
              ),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyContainer(
                  image: 'assets/Frame 1.png',
                ),
                MyContainer(
                  image: 'assets/Frame 2.png',
                ),
                MyContainer(
                  image: 'assets/Frame 3.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}