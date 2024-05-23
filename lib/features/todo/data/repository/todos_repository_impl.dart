import 'package:todo/features/todo/data/datasource/todos_api.dart';
import 'package:todo/features/todo/domain/entities/todo.dart';
import 'package:todo/features/todo/domain/repository/todos_repository.dart';

class TodosRepositoryImpl extends TodosRepository {
  final TodosApi _todosApi;

  TodosRepositoryImpl(this._todosApi);

  @override
  Future<TodosResponseEntity> getTodos() async {
    final response = await _todosApi.getTodos();
    return response;
  }
}
