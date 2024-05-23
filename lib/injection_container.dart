import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/features/todo/data/datasource/todos_api.dart';
import 'package:todo/features/todo/data/managers/api_manager/dio_api_manager.dart';
import 'package:todo/features/todo/data/repository/todos_repository_impl.dart';
import 'package:todo/features/todo/domain/repository/todos_repository.dart';
import 'package:todo/features/todo/domain/usecase/get_todos_usecase.dart';
import 'package:todo/features/todo/presentation/providers/todos.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Initialize
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<DioApiManager>(DioApiManager(sl()));
  sl.registerSingleton<TodosApi>(TodosApi());

  // Dependencies
  sl.registerSingleton<TodosRepository>(TodosRepositoryImpl(sl(), sl()));

  // UseCases
  sl.registerSingleton<GetTodosUsecase>(GetTodosUsecase(sl()));

  // Providers
  sl.registerFactory(() => ChangeNotifierProvider<TodosNotifier>(
        (ref) => TodosNotifier(sl()),
      ));
}
