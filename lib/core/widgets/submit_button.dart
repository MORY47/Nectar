import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key, required this.text, required this.onPressed,  this.height = 55,  this.width = double.infinity,
  });
  final String text;
  final Function() onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}