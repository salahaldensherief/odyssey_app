import 'package:flutter/material.dart';
import 'package:odyssey/core/utils/app_text_stayles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        SizedBox(width: 18,),
        Text(
          textAlign: TextAlign.center,
          'او',style: TextStyles.semiBold16,),
        SizedBox(width: 18,),

        Expanded(child: Divider()),

      ],
    );
  }
}
