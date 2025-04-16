import 'package:flutter/material.dart';
import '../../../entites/user_entity.dart';

@immutable
sealed class SginupState {}

final class SginupInitial extends SginupState {}
final class SginupLoading extends SginupState {}
final class SginupSucces extends SginupState {
  final UserEntity userEntity;

  SginupSucces({required this.userEntity});
}
final class SginupFailure extends SginupState {
  final String message;

  SginupFailure({required this.message});
}

