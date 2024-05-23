import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/features/todo/data/managers/api_manager/dio_api_manager.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Initialize
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<DioApiManager>(DioApiManager(sl()));
}
