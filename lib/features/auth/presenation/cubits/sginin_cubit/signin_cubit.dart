import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:odyssey/features/auth/domain/repos/auth_repo.dart';
import 'package:odyssey/features/auth/entites/user_entity.dart';
import 'package:odyssey/features/auth/presenation/cubits/signup_cubit/sginup_state.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;

  Future<void> signIn(
    String email,
    String password,
  ) async {
    emit(SigninLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(
        SgininFailure(
          message: failure.massage,
        ),
      ),
      (userEntity) => emit(SgininSucces(
        userEntity: userEntity,
      )),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(
        SgininFailure(
          message: failure.massage,
        ),
      ),
      (userEntity) => emit(SgininSucces(
        userEntity: userEntity,
      )),
    );
  }

  Future<void> signInWithFacebook() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) => emit(
        SgininFailure(
          message: failure.massage,
        ),
      ),
      (userEntity) => emit(SgininSucces(
        userEntity: userEntity,
      )),
    );
  }
}
