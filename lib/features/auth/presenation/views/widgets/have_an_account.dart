// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/core/utils/app_colors_styles.dart';
import 'package:odyssey/features/auth/presenation/views/sign_up_view.dart';
import '../../../../../core/utils/app_text_stayles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'تمتلك حساب بالفعل؟ ',
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap= (){
              Navigator.pop(context);
            },
            text: 'تسجيل دخول',
            style: TextStyles.semiBold16
                .copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
