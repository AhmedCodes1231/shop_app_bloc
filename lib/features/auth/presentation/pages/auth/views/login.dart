
import 'package:flutter/material.dart';
import 'package:shop_app_bloc/core/constansts/app_color.dart';
import 'package:shop_app_bloc/features/auth/presentation/pages/auth/widgets/custom_button.dart';
import 'package:shop_app_bloc/features/auth/presentation/pages/auth/widgets/custom_textfield.dart';
import 'package:shop_app_bloc/features/auth/presentation/pages/auth/widgets/custom_texts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splash,
      body: SafeArea(child:
      Column(
        children: [
          CustomTexts(title:'Welcome to tradly',),
          SizedBox(height: 66,),
          CustomTexts(subTitle: 'Login to your account',),
          SizedBox(height: 58,),
          CustomTextfield( hintText: 'Email/Mobile Number'),
          SizedBox(height: 16,),
          CustomTextfield(hintText: 'Password'),
          SizedBox(height: 38,),
          CustomButton(text: 'Login'),
          SizedBox(height: 32.5,),
          CustomTexts(subTitle: 'Forgot your password?',),
          SizedBox(height: 45.5,),
          CustomTexts(subTitle: 'Don’t have an account? Sign up')
        ],
      ),
      ),
    );
  }
}