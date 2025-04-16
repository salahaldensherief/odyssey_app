part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}
final class SigninLoading extends SigninState {}
final class SgininSucces extends SigninState {
  final UserEntity userEntity;

  SgininSucces({required this.userEntity});
}
final class SgininFailure extends SigninState {
  final String message;

  SgininFailure({required this.message});
}