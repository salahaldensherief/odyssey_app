// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:odyssey/core/errors/failures.dart';
import 'package:odyssey/core/errors/firebase_exceptions.dart';
import 'package:odyssey/core/services/firebase_auth_service.dart';
import 'package:odyssey/features/auth/data/models/user_model.dart';
import 'package:odyssey/features/auth/domain/repos/auth_repo.dart';
import 'package:odyssey/features/auth/entites/user_entity.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exeption in FirebaseAuthService.createUserWithEmailAndPassword:${e.toString()}');
      return left(ServerFailure('لقد حدث خطا ما , حاول في وقت لاحق'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exeption in FirebaseAuthService.createUserWithEmailAndPassword:${e.toString()}');
      return left(ServerFailure('لقد حدث خطا ما , حاول في وقت لاحق'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();

      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exeption in FirebaseAuthService.createUserWithEmailAndPassword:${e.toString()}');
      return left(ServerFailure('لقد حدث خطا ما , حاول في وقت لاحق'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();

      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exeption in FirebaseAuthService.createUserWithEmailAndPassword:${e.toString()}');
      return left(ServerFailure('لقد حدث خطا ما , حاول في وقت لاحق'));
    }
  }
}
