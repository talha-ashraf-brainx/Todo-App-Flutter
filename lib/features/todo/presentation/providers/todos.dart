import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/features/todo/data/models/todo.dart';

final todoNotifierProvider = ChangeNotifierProvider<TodosNotifier>(
  (ref) => TodosNotifier(),
);

class TodosNotifier extends ChangeNotifier {
  List<Todo> todosList = [];
}
