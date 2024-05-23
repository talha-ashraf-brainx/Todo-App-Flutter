import 'package:todo/core/usercase/usecase.dart';
import 'package:todo/features/todo/domain/entities/todo.dart';
import 'package:todo/features/todo/domain/repository/todos_repository.dart';

class GetTodosUsecase implements UseCase {
  final TodosRepository _todosRepository;
  const GetTodosUsecase(this._todosRepository);

  @override
  Future<List<TodoEntity>> call() async {
    final response = await _todosRepository.getTodos();
    return response.todos;
  }
}
