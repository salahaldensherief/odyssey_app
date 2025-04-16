import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:odyssey/core/helper_function/build_error_bar.dart';

import '../../../../../core/widgets/CustomProgressHud.dart';
import '../../cubits/sginin_cubit/signin_cubit.dart';
import 'login_page_view_body.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if(state is SgininSucces){
        }
        if(state is SgininFailure){
          BuildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SigninLoading ? true : false,
        );
      },
    );
  }
}

