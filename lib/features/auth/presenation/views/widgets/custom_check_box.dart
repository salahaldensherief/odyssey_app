// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../core/utils/app_colors_styles.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChecked});
final bool isChecked;
final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onChecked( !isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Image.asset(
                width: 24,
                height: 24,
                'assets/images/check_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.png')
            : const SizedBox(),
      ),
    );  }
}
