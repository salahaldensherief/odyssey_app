import 'package:flutter/material.dart';
import 'package:odyssey/core/widgets/costum_app_bar.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/login_page_view_body.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});
static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'تسجيل دخول',),
      body: LoginPageViewBody(),
    );
  }
}
