// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:odyssey/core/services/firebase_auth_service.dart';
import 'package:odyssey/features/auth/data/repos/auth_repo_impl.dart';
import 'package:odyssey/features/auth/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()
  ));

}
