import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/features/todo/data/datasource/todos_api.dart';
import 'package:todo/features/todo/data/managers/api_manager/api_manager.dart';
import 'package:todo/features/todo/data/managers/api_manager/dio_api_manager.dart';
import 'package:todo/features/todo/data/repository/todos_repository_impl.dart';
import 'package:todo/features/todo/domain/repository/todos_repository.dart';
import 'package:todo/features/todo/domain/usecase/get_todos_usecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Initialize
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<ApiManager>(DioApiManager(sl<Dio>()));

  // Data Source
  sl.registerSingleton<TodosApi>(TodosApi());

  // Repository
  sl.registerSingleton<TodosRepository>(TodosRepositoryImpl(sl<TodosApi>()));

  // Use Cases
  sl.registerSingleton<GetTodosUsecase>(GetTodosUsecase(sl<TodosRepository>()));
}
