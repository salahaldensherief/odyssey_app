// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/constants.dart';
import 'package:odyssey/core/services/shared_preferences_singleton.dart';
import 'package:odyssey/features/auth/presenation/views/signin_view.dart';
import 'package:odyssey/features/onbording/presentaion/views/on_bording_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              width: 600,
              fit: BoxFit.cover,
              'assets/images/PngItem_5249680.png',
            ),
          ),
          Center(
            child: Image.asset(
              width: 300,
              'assets/images/370953070_133736459806129_4755696084453982637_n-removebg-preview.png',
            ),
          ),
        ],
      ),
    );
  }

  void excuteNavigation() {
    Future.delayed(Duration(seconds: 3), () {
      bool isBoardingViewSeen = prefs.getBoll(KisOnboardingViewSeen);
      if (isBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, signinview.routeName);

      }else{
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
