// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/features/onbording/presentaion/views/widgets/OnBoardingViewBody.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'onBoardingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
