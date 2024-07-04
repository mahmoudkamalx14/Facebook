import 'package:facebook/core/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //* CacheHelper
  getIt.registerFactory<CacheHelper>(() => CacheHelper());
}
