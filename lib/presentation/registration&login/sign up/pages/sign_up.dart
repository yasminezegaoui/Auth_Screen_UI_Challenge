// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auth_screen_ui_challenge/common/widgets/my_container.dart';
import 'package:auth_screen_ui_challenge/common/widgets/my_text_field.dart';
import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:auth_screen_ui_challenge/presentation/registration&login/sign%20up/API/sign_up_api.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmController;
  late bool isCorrect = false;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

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
              'Create Account',
              style: TextStyle(
                color: AppColors.primary,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 30
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Create an account so you can explore all the',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),
            ),
            Text(
              'existing jobs',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),
            ),
        
            SizedBox(height: 65,),
        
            MyTextField(
              controller: emailController,
              hintText: 'Email', 
              obscureText: false,
            ),
        
            SizedBox(height: 25,),
        
            MyTextField(
              controller: passwordController,
              hintText: 'Password', 
              obscureText: true,
            ),

            SizedBox(height: 25,),
        
            MyTextField(
              controller: confirmController,
              errorText: isCorrect ? 'your input doesn\'t match your password' : null ,
              hintText: 'Confirm Password', 
              obscureText: true,
            ),

            SizedBox(height: 35,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ElevatedButton(
                onPressed: () async{
                  setState(() {
                    if(confirmController.text == passwordController.text){
                      isCorrect = false;
                    }else{
                      isCorrect = true;
                    }
                  });
                  await SignUpApi.signUp(emailController.text.toString(), passwordController.text.toString(), context);
                }, 
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 108, vertical: 12),
                  child: Text(
                    'Sign up',
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
                  '/login', 
                  (route) => false
                );
              }, 
              child: Text(
                'Already have an account',
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