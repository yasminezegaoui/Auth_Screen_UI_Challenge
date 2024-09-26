// ignore_for_file: empty_catches, unused_local_variable
// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:developer' as developer;

class SignUpApi {

  static Future<Object?> signUp(String email, password, BuildContext context) async{
    
    try{
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email': email,
          'password': password
        }
      );

      if(response.statusCode == 200){
        return showDialog(
          context: context, 
          builder: (context) => CupertinoAlertDialog(
            title: Text('Registration is done'),
            content: Text('go to login page and login to your account'),
            actions: [
              CupertinoDialogAction(
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/login',
                  (route) => false
                ),
                textStyle: TextStyle(
                  color: AppColors.primary
                ),
                child: Text('Login'),
              ),
            ],
          )
        );
      }else{
        return showDialog(
          context: context, 
          builder: (context) => CupertinoAlertDialog(
            title: Text('account doesn\'t exist'),
            content: Text('the email or the password are uncorrect'),
            actions: [
              CupertinoDialogAction(
                textStyle: TextStyle(
                  color: AppColors.primary
                ),
                child: Text('Try again'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          )
        );
      }
    }catch(e){
      developer.log(e.toString());
    }
    return null;
  }
}