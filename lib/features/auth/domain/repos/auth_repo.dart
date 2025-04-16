// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:odyssey/core/errors/failures.dart';
import 'package:odyssey/features/auth/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password,String name);

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
}
