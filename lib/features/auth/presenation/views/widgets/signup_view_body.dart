// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:odyssey/core/helper_function/build_error_bar.dart';
import 'package:odyssey/core/widgets/custom_text_bottom.dart';
import 'package:odyssey/core/widgets/custom_text_field.dart';
import 'package:odyssey/features/auth/presenation/cubits/signup_cubit/sginup_cubit.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/have_an_account.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/terms_and_conditions.dart';
import '../../../../../core/widgets/passwoed_field.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
late  String email , userName, password;
late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value){
                  userName = value!;
                },
                  hintText: 'الاسم كامل', textInputType: TextInputType.name),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                  onSaved: (value){
                    email = value!;
                  },
                  hintText: ' البريد الإلكتروني',
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value){
                  password = value!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TermsAndConditions(
                onChanged: (value){
                  isTermsAccepted = value;

                },
              ),
              SizedBox(height: 30,),
              CustomTextBottom(onPressed: (){
                if(formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  if (isTermsAccepted) {
                    context.read<SginupCubit>().createUserWithEmailAndPassword(
                        email, password, userName);
                  }else{
                    BuildErrorBar(context, 'يجب الموافقة علي الشروط والاحكام');
                  }
                }else{
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
              text: 'إنشاء حساب جديد',
              ),
              SizedBox(
                height: 26,
              ),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

