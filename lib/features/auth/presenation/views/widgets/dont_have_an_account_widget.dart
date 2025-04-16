// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/core/utils/app_colors_styles.dart';
import 'package:odyssey/features/auth/presenation/views/sign_up_view.dart';
import '../../../../../core/utils/app_text_stayles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟ ',
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap= (){
              Navigator.pushNamed(context, SignUpView.routeName);
            },
            text: 'قم بإنشاء حساب',
            style: TextStyles.semiBold16
                .copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
