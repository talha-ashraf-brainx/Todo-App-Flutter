import 'package:todo/features/todo/data/datasource/todos_api.dart';
import 'package:todo/features/todo/data/managers/api_manager/api_manager.dart';
import 'package:todo/features/todo/domain/entities/todo.dart';
import 'package:todo/features/todo/domain/repository/todos_repository.dart';

class TodosRepositoryImpl extends TodosRepository {
  final ApiManager _apiManager;
  final TodosApi _todosApi;

  TodosRepositoryImpl(this._todosApi, this._apiManager);

  @override
  Future<TodosResponseEntity> getTodos() async {
    return _todosApi.build(_apiManager);
  }
}
