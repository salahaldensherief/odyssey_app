import 'package:flutter/material.dart';
import 'package:odyssey/core/widgets/costum_app_bar.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
static const routeName = 'signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: 'حساب جديد'),
      body: SignupViewBody(),
    );
  }
}
