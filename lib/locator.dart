import 'package:get_it/get_it.dart';
import 'package:kitchen_stories/core/viewmodels/home_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // locator.registerLazySingleton(() => NavigationService());
  // locator.registerLazySingleton(() => AnalyticsService());
  // locator.registerLazySingleton(() => CrashlyticsService());
  // locator.registerLazySingleton(() => ForceUpdateService());
  // locator.registerLazySingleton(() => PermissionsManager());
  // locator.registerLazySingleton(() => DataCollection());
  // locator.registerFactory(() => PermissionModel());
  locator.registerFactory(() => HomeViewModel());
}
