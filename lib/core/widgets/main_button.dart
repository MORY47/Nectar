import 'package:flutter/material.dart';
import 'package:flutter_application_3/core/utils/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
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
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'Login',
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