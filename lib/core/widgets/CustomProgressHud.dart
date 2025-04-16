import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../features/auth/presenation/views/widgets/login_page_view_body.dart';

class CustomProgressHud extends StatelessWidget {
  const CustomProgressHud({
    super.key, this.isLoading,
  });
final isLoading;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
        inAsyncCall: isLoading,
        child: LoginPageViewBody());
  }
}
