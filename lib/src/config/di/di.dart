import 'package:get_it/get_it.dart';

// Note: Inject here your dependencies to get them in the app,
// wherever you need them.
// Often developers inject things like Dio, Bloc and Services.
// Example: getIt.get<DioClient>()
final getIt = GetIt.instance;

// Hint: you need to call initDi() in main.dart before runApp()
void initDi() {
  // To inject your dependencies write:
  // getIt.registerLazySingleton<DioClient>(DioClient());
}
