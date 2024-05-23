import 'package:todo/features/todo/domain/entities/todo.dart';

abstract class TodosRepository {
  Future<TodosResponseEntity> getTodos();
}
