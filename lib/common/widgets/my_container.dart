import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String image;
  final void Function()? onTap;
  const MyContainer({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 44,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightGrey,
          ),
          child: Center(
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }
}