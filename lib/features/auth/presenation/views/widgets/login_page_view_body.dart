import 'package:flutter/material.dart';
import 'package:odyssey/core/utils/app_colors_styles.dart';
import 'package:odyssey/core/widgets/custom_text_bottom.dart';
import 'package:odyssey/core/widgets/custom_text_field.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/dont_have_an_account_widget.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/or_divider.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/social_login_botton.dart';

import '../../../../../core/utils/app_text_stayles.dart';

class LoginPageViewBody extends StatelessWidget {
  const LoginPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  hintText: 'البريد الالكتروني',
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: 'كلمة المرور',
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'نسيت كلمة المرور ؟',
                      style: TextStyle(
                        color: Colors.blue.shade200,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                CustomTextBottom(onPressed: () {}, text: 'تسجيل الدخول'),
                SizedBox(
                  height: 32,
                ),
                DontHaveAnAccountWidget(),
                SizedBox(
                  height: 32,
                ),
                OrDivider(),
                SizedBox(
                  height: 16,
                ),
                SocialLoginBotton(
                    onPressed: () {},
                    image: 'assets/images/google_icon.jpg',
                    text: 'تسجيل بواسطة جوجل'),
                SizedBox(
                  height: 16,
                ),
                SocialLoginBotton(
                    onPressed: () {},
                    image: 'assets/images/appleIcons.jpg',
                    text: 'تسجيل بواسطة جوجل'),
                SizedBox(
                  height: 16,
                ),
                SocialLoginBotton(
                    onPressed: () {},
                    image: 'assets/images/facebookIcon.jpg',
                    text: 'تسجيل بواسطة جوجل'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
