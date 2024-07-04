// ignore_for_file: must_be_immutable

import 'package:facebook/core/cache/cache_helper.dart';
import 'package:facebook/core/di/dependency_injection.dart';
import 'package:facebook/core/routes/app_router.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Facebook extends StatelessWidget {
  Facebook({super.key, required this.appRouter});

  final AppRouter appRouter;

  dynamic login = getIt<CacheHelper>().getData(key: Routes.loginScreen);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: sharedStartApp(),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }

  String sharedStartApp() {
    if (login == true) {
      return Routes.homeScreen;
    } else {
      return Routes.loginScreen;
    }
  }
}
