// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/core/utils/app_colors_styles.dart';
import 'package:odyssey/core/utils/app_text_stayles.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});
final ValueChanged<bool>onChanged;
  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  bool isTermsAccepted = false;
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            widget.onChanged(value);
            isTermsAccepted = value;
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.semiBold13,
                ),
                TextSpan(
                  text: 'الشروط والأحكام ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                TextSpan(
                  text: 'الخاصة ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                TextSpan(
                  text: 'بنا',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
