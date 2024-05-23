class TodoEntity {
  final int id;
  final String todo;
  final bool completed;
  final int userId;

  TodoEntity({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });
}

class TodosResponseEntity {
  final List<TodoEntity> todos;
  final int total;
  final int skip;
  final int limit;

  TodosResponseEntity({
    required this.todos,
    required this.total,
    required this.skip,
    required this.limit,
  });
}
