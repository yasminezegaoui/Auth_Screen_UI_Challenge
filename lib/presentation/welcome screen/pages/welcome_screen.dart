// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/welcome image.png',
                height: 422,
                width: 385,
              ),
        
              SizedBox(height: 20,),
        
              Text(
                'Discover Your',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                  fontFamily: 'Poppins'
                ),
              ),
              Text(
                ' Dream Job here',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                  fontFamily: 'Poppins'
                ),
              ),
        
              SizedBox(height: 20,),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  'Explore all the existing job roles based on your interest and study major',
                  style: TextStyle(
                    color: AppColors.text,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.5,
                    fontFamily: 'Poppins'
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
        
              SizedBox(height: 90,),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/login', 
                          (route) => false
                        );
                      }, 
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 13),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Colors.white
                          ),
                        ),
                      )
                    ),
        
                    SizedBox(width: 25,),
        
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/register', 
                          (route) => false
                        );
                      }, 
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Colors.black87
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}