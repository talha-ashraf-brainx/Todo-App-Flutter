import 'package:todo/features/todo/domain/entities/todo.dart';

class Todo extends TodoEntity {
  Todo({
    required super.id,
    required super.todo,
    required super.completed,
    required super.userId,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    assert(json['id'] is int?, 'Expected id to be int');
    assert(json['todo'] is String?, 'Expected todo to be String');
    assert(json['completed'] is bool?, 'Expected completed to be bool');
    assert(json['userId'] is int?, 'Expected userId to be int');

    return Todo(
      id: json['id'] ?? 0,
      todo: json['todo'] ?? '',
      completed: json['completed'] ?? false,
      userId: json['userId'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todo': todo,
      'completed': completed,
      'userId': userId,
    };
  }
}

class TodosResponse extends TodosResponseEntity {
  TodosResponse({
    required super.todos,
    required super.total,
    required super.skip,
    required super.limit,
  });

  factory TodosResponse.fromJson(Map<String, dynamic> json) {
    assert(json['todos'] is List?, 'Expected todos to be List');
    assert(json['total'] is int?, 'Expected total to be int');
    assert(json['skip'] is int?, 'Expected skip to be int');
    assert(json['limit'] is int?, 'Expected limit to be int');

    return TodosResponse(
      todos: (json['todos'] as List<dynamic>)
          .map((item) => Todo.fromJson(item as Map<String, dynamic>))
          .toList(),
      total: json['total'] ?? 0,
      skip: json['skip'] ?? 0,
      limit: json['limit'] ?? 30,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'todos': todos.map((todo) => (todo as Todo).toJson()).toList(),
      'total': total,
      'skip': skip,
      'limit': limit,
    };
  }
}
