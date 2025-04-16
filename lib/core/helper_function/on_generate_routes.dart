// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/features/auth/presenation/views/signin_view.dart';
import 'package:odyssey/features/auth/presenation/views/sign_up_view.dart';
import 'package:odyssey/features/splash/presentaion/splash_screen.dart';
import '../../features/onbording/presentaion/views/on_bording_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case signinview.routeName:
      return MaterialPageRoute(builder: (context) => signinview());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
