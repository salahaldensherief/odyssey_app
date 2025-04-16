// Flutter imports:
import 'package:flutter/material.dart';

class CustomTextBottom extends StatelessWidget {
  CustomTextBottom({required this.text, super.key, this.onPressed});
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        minimumSize: Size(400, 50),
        backgroundColor: Color(0xffD6AC8B),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
