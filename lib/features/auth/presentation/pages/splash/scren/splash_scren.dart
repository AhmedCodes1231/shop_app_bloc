
import 'package:flutter/material.dart';
import 'package:shop_app_bloc/core/constansts/app_color.dart';
import 'package:shop_app_bloc/core/constansts/app_image.dart';

class SplashScren extends StatelessWidget {
  const SplashScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splash,
            body: SafeArea(
        child:Container(
          child:Column(
            children: [
              
              Image.asset( AppImages.iconSplashs),
              SizedBox(height: 8.19,),
              Image.asset(AppImages.iconSplashText),
            ],
          ),
        ),
      ),
    );
  }
}