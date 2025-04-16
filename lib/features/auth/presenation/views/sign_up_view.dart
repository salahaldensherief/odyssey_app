// sign_up_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:odyssey/core/services/get_it_service.dart';
import 'package:odyssey/core/widgets/costum_app_bar.dart';
import 'package:odyssey/features/auth/domain/repos/auth_repo.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/SignupViewBodyConsumer.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/signup_view_body.dart';
import 'package:odyssey/features/auth/presenation/cubits/signup_cubit/sginup_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = 'signin';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SginupCubit(
            getIt<AuthRepo>(),
          ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SignupViewBodyConsumer(),
      ),
    );
  }
}