import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_3/core/constants/app_images.dart';
import 'package:flutter_application_3/core/functions/navigation.dart';
import 'package:flutter_application_3/core/utils/colors.dart';
import 'package:flutter_application_3/features/auth/pages/location_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; 
      pushWithReplacement(context, const LocationScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset(AppImages.logoSvg),
      ),
    );
  }
}
