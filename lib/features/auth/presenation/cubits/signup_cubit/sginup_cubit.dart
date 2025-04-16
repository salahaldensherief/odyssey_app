import 'package:bloc/bloc.dart';

import 'package:odyssey/features/auth/domain/repos/auth_repo.dart';
import 'package:odyssey/features/auth/presenation/cubits/signup_cubit/sginup_state.dart';

class SginupCubit extends Cubit<SginupState> {
  SginupCubit(this.authRepo) : super(SginupInitial());
  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(SginupLoading());
    final result =
    await authRepo.createUserWithEmailAndPassword(email, password, name);
    result.fold(
          (failure) => emit(
        SginupFailure(
          message: failure.massage,
        ),
      ),
          (userEntity) => emit(
        SginupSucces(
          userEntity: userEntity,
        ),
      ),
    );
  }
}