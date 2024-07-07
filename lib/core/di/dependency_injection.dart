import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facebook/core/cache/cache_helper.dart';
import 'package:facebook/core/services/auth_service.dart';
import 'package:facebook/core/services/firestore_service.dart';
import 'package:facebook/features/auth/data/repository/auth_repository.dart';
import 'package:facebook/features/auth/logic/cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //* CacheHelper
  getIt.registerFactory<CacheHelper>(() => CacheHelper());

  FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  getIt.registerLazySingleton<AuthService>(() => AuthService(auth));

  getIt.registerLazySingleton<FirestoreService>(
      () => FirestoreService(firestore));

  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepository(AuthService(auth), FirestoreService(firestore)));

  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit(getIt()));
}
