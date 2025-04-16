// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/features/onbording/presentaion/views/widgets/PageViewItem.dart';

class OnBoardingPageView extends StatelessWidget {
   OnBoardingPageView({super.key ,required this.pageController});
PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/images/370953070_133736459806129_4755696084453982637_n-removebg-preview.png',
          title: '  مرحبا بك فيOdyssey',
          description: '.من خلالنا كل ما عليك هو تجهيز شنتطك',
          backgraoundImage: 'assets/images/PngItem_5249680.png',
        ),
        PageViewItem(
          image: 'assets/images/—Pngtree—illustration of kabbah in mecca_7961257.png',
          title: 'أفضل عروض وباقات الحج والعمرة',
          description: 'نقدم أفضل الأسعار ومشتملات الإقامة كاملة واعلي جودة',
          backgraoundImage: '',
        ),
        PageViewItem(
          image: 'assets/images/image-1-plane-600x400.png',
          title: ' احجز تذاكر الطيران بسهولة من خلالنا',
          description: 'نسعي في توفير التذكرة بأقل تكاليف',
          backgraoundImage: '',
        ),

      ],
    );
  }
}
