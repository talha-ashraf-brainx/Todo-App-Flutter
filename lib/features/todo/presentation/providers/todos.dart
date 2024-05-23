import 'package:flutter/material.dart';
import 'package:todo/features/todo/domain/entities/todo.dart';
import 'package:todo/features/todo/domain/usecase/get_todos_usecase.dart';

class TodosNotifier extends ChangeNotifier {
  final GetTodosUsecase _getTodosUsecase;
  TodosNotifier(this._getTodosUsecase);

  Future<List<TodoEntity>> get todosList async => await _getTodosUsecase.call();
}
