// Flutter imports:
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:odyssey/core/utils/app_colors_styles.dart';
import 'package:odyssey/core/widgets/custom_text_bottom.dart';
import 'package:odyssey/core/widgets/custom_text_field.dart';
import 'package:odyssey/core/widgets/passwoed_field.dart';
import 'package:odyssey/features/auth/presenation/cubits/sginin_cubit/signin_cubit.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/dont_have_an_account_widget.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/or_divider.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/social_login_botton.dart';
import '../../../../../core/utils/app_text_stayles.dart';

class LoginPageViewBody extends StatefulWidget {
  const LoginPageViewBody({super.key});

  @override
  State<LoginPageViewBody> createState() => _LoginPageViewBodyState();
}

AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
late String email, password;
GlobalKey<FormState> formkey = GlobalKey<FormState>();

class _LoginPageViewBodyState extends State<LoginPageViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  CustomTextFormField(
                    onSaved: (value) {
                      email = value!;
                    },
                    hintText: 'البريد الالكتروني',
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  PasswordField(
                    onSaved: (value) {
                      password = value!;
                    },
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
                  CustomTextBottom(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          context.read<SigninCubit>().signIn(email, password);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                      text: 'تسجيل الدخول'),
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
                      onPressed: () {
                        context.read<SigninCubit>().signInWithGoogle();
                      },
                      image: 'assets/images/google_icon.jpg',
                      text: 'تسجيل بواسطة جوجل'),
                  SizedBox(
                    height: 16,
                  ),
                  Platform.isIOS
                      ? Column(
                          children: [
                            SocialLoginBotton(
                                onPressed: () {},
                                image: 'assets/images/appleIcons.jpg',
                                text: 'تسجيل بواسطة ابل'),
                            SizedBox(
                              height: 16,
                            ),
                          ],
                        )
                      : SizedBox(),
                  SocialLoginBotton(
                      onPressed: () {
                        context.read<SigninCubit>().signInWithFacebook();
                      },
                      image: 'assets/images/facebookIcon.jpg',
                      text: 'تسجيل بواسطة فيسبوك'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
