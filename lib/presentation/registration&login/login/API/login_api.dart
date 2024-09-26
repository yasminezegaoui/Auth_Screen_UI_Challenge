// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer' as developer;
import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:auth_screen_ui_challenge/data/local%20storage/secure_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginApi {
  final SecureStorage secureStorage = SecureStorage();

  static Future<Object?> login(String email, password, BuildContext context) async{

    try{
      Response response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': email,
          'password': password
        }
      );

      if(response.statusCode == 200){
        final String token = response.body;
        SecureStorage().writeSecureData('auth_token', token);
        SecureStorage().readSecureData('auth_token');


        return Navigator.of(context).pushNamedAndRemoveUntil(
          '/home',
          (route) => false
        );
      }else{
        return showDialog(
          context: context, 
          builder: (context) => CupertinoAlertDialog(
            title: Text('Login Failed'),
            content: Text('The email or password is incorrect'),
            actions: [
              CupertinoDialogAction(
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/register',
                  (route) => false
                ),
                textStyle: TextStyle(
                  color: Colors.red
                ),
                child: Text('Register'),
              ),
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