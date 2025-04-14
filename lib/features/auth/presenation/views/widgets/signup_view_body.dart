import 'package:flutter/material.dart';
import 'package:odyssey/core/widgets/custom_text_bottom.dart';
import 'package:odyssey/core/widgets/custom_text_field.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/have_an_account.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
                hintText: 'الاسم كامل', textInputType: TextInputType.name),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
                hintText: ' البريد الإلكتروني',
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(
              height: 16,
            ),
            TermsAndConditions(),
            SizedBox(height: 30,),
            CustomTextBottom(onPressed: (){},
            text: 'إنشاء حساب جديد',
            ),
            SizedBox(
              height: 26,
            ),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
