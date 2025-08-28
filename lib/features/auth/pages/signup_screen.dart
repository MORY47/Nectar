import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_3/core/constants/app_images.dart';
import 'package:flutter_application_3/core/functions/navigation.dart';
import 'package:flutter_application_3/core/utils/colors.dart';
import 'package:flutter_application_3/core/widgets/custom_password_field.dart';
import 'package:flutter_application_3/core/widgets/custom_text_field.dart';
import 'package:flutter_application_3/core/widgets/main_button.dart';
import 'package:flutter_application_3/features/auth/pages/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.89),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SvgPicture.asset(AppImages.carrotSvg)],
                ),
                SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkColor,
                      ),
                    ),
                    Text(
                      'Enter your credentials to continue',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                CustomTextField(label: 'Username'),
                SizedBox(height: 20),
                CustomTextField(label: 'Email'),
                SizedBox(height: 20),
                CustomPasswordField(label: 'Password'),
            
                SizedBox(height: 20),
                MainButton(text: 'Sign Up', onPressed: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: AppColors.darkColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        pushWithReplacement(context, LoginScreen());
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}