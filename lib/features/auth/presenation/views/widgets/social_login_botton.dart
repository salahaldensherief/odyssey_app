import 'package:flutter/material.dart';
import 'package:odyssey/core/utils/app_text_stayles.dart';

class SocialLoginBotton extends StatelessWidget {
  const SocialLoginBotton({super.key, required this.onPressed, required this.image, required this.text});
  final VoidCallback onPressed;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(

        style: TextButton.styleFrom(

          shape: RoundedRectangleBorder(

              side: BorderSide(
                color: Color(0xffdcdede),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16)),
          fixedSize: Size(400, 70)
        ),
        onPressed: onPressed,
        child: ListTile(
          leading: Image.asset(image,width: 25,height: 28,),
          title: Text(text,textAlign: TextAlign.center,style: TextStyles.semiBold16,),
          visualDensity: VisualDensity(
            vertical: VisualDensity.minimumDensity
          ),
        ));
  }
}
