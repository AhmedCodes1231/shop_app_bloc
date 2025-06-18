import 'package:flutter/material.dart';
import 'package:shop_app_bloc/core/constansts/app_color.dart';

class CustomTexts extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const CustomTexts({
    super.key,
     this.title,
     this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: TextStyle(
            color: AppColor.backgroundColorButton,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subTitle ??'',
          style: TextStyle(
            color:  AppColor.backgroundColorButton,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
