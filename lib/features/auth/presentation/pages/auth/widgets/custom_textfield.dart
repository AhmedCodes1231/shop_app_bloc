import 'package:flutter/material.dart';
import 'package:shop_app_bloc/core/constansts/app_color.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  const CustomTextfield({super.key, required this.controller,required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: AppColor.backgroundColorButton),
      ),
    );
    /* Container(
      width: 311,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
    );*/
  }
}
