// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:odyssey/core/services/get_it_service.dart';

// Project imports:
import 'package:odyssey/core/widgets/costum_app_bar.dart';
import 'package:odyssey/features/auth/domain/repos/auth_repo.dart';
import 'package:odyssey/features/auth/presenation/cubits/sginin_cubit/signin_cubit.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/login_page_view_body.dart';
import 'package:odyssey/features/auth/presenation/views/widgets/sign_in_view_body_bloc_consumer.dart';

class signinview extends StatelessWidget {
  const signinview({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar( context,title: 'تسجيل دخول',),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}

