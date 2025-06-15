import 'package:flutter/material.dart';
import 'package:shop_app_bloc/core/constansts/app_color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 48,
      width: 311,
        decoration: BoxDecoration(
            color:AppColor.backgroundColorButton ,
            borderRadius: const BorderRadius.all(Radius.circular(19))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColor.splash,
                  fontWeight: FontWeight.w500,
                  ),
              ),
        ],
      ),
        ),
    
    );
  }
}