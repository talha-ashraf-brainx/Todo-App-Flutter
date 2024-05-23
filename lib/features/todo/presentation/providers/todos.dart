import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/features/todo/data/datasource/todos_api.dart';
import 'package:todo/features/todo/data/managers/api_manager/api_manager.dart';
import 'package:todo/features/todo/data/repository/todos_repository_impl.dart';
import 'package:todo/features/todo/domain/entities/todo.dart';
import 'package:todo/features/todo/domain/repository/todos_repository.dart';
import 'package:todo/features/todo/domain/usecase/get_todos_usecase.dart';
import 'package:todo/injection_container.dart';

class TodosNotifier extends StateNotifier<AsyncValue<List<TodoEntity>>> {
  final GetTodosUsecase _getTodosUsecase;

  TodosNotifier(this._getTodosUsecase) : super(const AsyncValue.loading()) {
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    try {
      final todosResponse = await _getTodosUsecase();
      state = AsyncValue.data(todosResponse);
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }
}

final todosNotifierProvider =
    StateNotifierProvider<TodosNotifier, AsyncValue<List<TodoEntity>>>((ref) {
  final getTodosUsecase = ref.watch(getTodosUsecaseProvider);
  return TodosNotifier(getTodosUsecase);
});

final getTodosUsecaseProvider = Provider<GetTodosUsecase>((ref) {
  final repository = ref.watch(todosRepositoryProvider);
  return GetTodosUsecase(repository);
});

final todosRepositoryProvider = Provider<TodosRepository>((ref) {
  final todosApi = ref.watch(todosApiProvider);
  return TodosRepositoryImpl(todosApi);
});

final todosApiProvider = Provider<TodosApi>((ref) {
  return sl<TodosApi>()..build(sl<ApiManager>());
});
