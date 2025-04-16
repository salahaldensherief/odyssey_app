import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:odyssey/features/auth/presenation/cubits/signup_cubit/sginup_state.dart';

import 'package:odyssey/features/auth/presenation/views/widgets/signup_view_body.dart';
import '../../../../../core/helper_function/build_error_bar.dart';
import '../../cubits/signup_cubit/sginup_cubit.dart';

class SignupViewBodyConsumer extends StatelessWidget {
  const SignupViewBodyConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SginupCubit, SginupState>(
      listener: (context, state) {
        if (state is SginupSucces) {}
        if (state is SginupFailure) {
          BuildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SginupLoading ? true : false,
            color: Colors.transparent,
            child: SignupViewBody());
      },
    );
  }
}