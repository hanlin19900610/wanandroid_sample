import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:wanandroid_flutter_bloc/net/api/api_client.dart';
import 'package:wanandroid_flutter_bloc/net/base_dio.dart';

final GetIt locator = GetIt.instance;

initializeDependencyInjection() async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();
  locator.registerLazySingleton(
    () => ApiClient(dio: BaseDio.getInstance().getDio()),
  );
  locator.registerLazySingleton(
    () => prefs,
  );
  // Register other services and repositories as needed
}
