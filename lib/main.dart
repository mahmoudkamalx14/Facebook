import 'package:facebook/core/cache/cache_helper.dart';
import 'package:facebook/core/di/dependency_injection.dart';
import 'package:facebook/core/routes/app_router.dart';
import 'package:facebook/facebook_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  setupGetIt();

  await CacheHelper().init();

  runApp(Facebook(appRouter: AppRouter()));
}

//? dart run build_runner build --delete-conflicting-outputs

//! dart run flutter_native_splash:create --path=flutter_native_splash.yaml
