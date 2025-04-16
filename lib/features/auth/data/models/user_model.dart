// Package imports:
import 'package:firebase_auth/firebase_auth.dart';

// Project imports:
import 'package:odyssey/features/auth/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.email, required super.password, required super.uId});
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
        email: user.displayName ?? '',
        password: user.email ?? '',
        uId: user.uid ?? '');
  }
}
