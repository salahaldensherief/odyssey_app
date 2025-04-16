// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dots_indicator/dots_indicator.dart';

// Project imports:
import 'package:odyssey/constants.dart';
import 'package:odyssey/core/services/shared_preferences_singleton.dart';
import 'package:odyssey/features/auth/presenation/views/signin_view.dart';
import 'package:odyssey/features/onbording/presentaion/views/widgets/OnBoardingPageView.dart';
import '../../../../../core/widgets/custom_text_bottom.dart';

class OnBoardingViewBody extends StatefulWidget {
  OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

late PageController pageController;
var currentPage = 0;


class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnBoardingPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: 100,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: DotsIndicator(
                decorator: DotsDecorator(
                    activeColor: Color(0xff3483A6),
                    color:currentPage == 2 ? Color(0xff3483A6): Color(0xff3483A6).withOpacity(.3)),
                position: currentPage.toDouble(),
                dotsCount: 3),
          ),
        ),
        Positioned(
          right: 23,
          bottom: 20,
          child: Visibility(
            visible: currentPage == 2 ? true :false,
            child: CustomTextBottom(
              onPressed: () {
                prefs.setBool(KisOnboardingViewSeen, true);

                Navigator.pushReplacementNamed(context, signinview.routeName);
              },
              text: 'ابدأ الآن',
            ),
          ),
        ),
      ],
    );
  }
}

