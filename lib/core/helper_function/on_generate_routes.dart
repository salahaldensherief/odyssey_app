import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odyssey/features/auth/presenation/views/login_view.dart';
import 'package:odyssey/features/auth/presenation/views/sign_up_view.dart';
import 'package:odyssey/features/splash/presentaion/splash_screen.dart';

import '../../features/onbording/presentaion/views/on_bording_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case Loginview.routeName:
      return MaterialPageRoute(builder: (context) => Loginview());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
