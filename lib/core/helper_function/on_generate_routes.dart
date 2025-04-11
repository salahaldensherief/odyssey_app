import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odyssey/features/auth/presenation/views/login_page.dart';
import 'package:odyssey/features/splash/presentaion/splash_screen.dart';

import '../../features/onbording/presentaion/views/on_bording_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings){
  switch (settings.name){
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context)=> OnBoardingView());
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (context)=> LoginPage());
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context)=> SplashScreen());
    default:
      return MaterialPageRoute(builder: (context)=> Scaffold());
  }

}