import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/core/constants/apis.dart';
import 'package:todo/features/todo/data/managers/api_manager/api_manager.dart';
import 'package:todo/features/todo/data/models/todo.dart';
part 'todos_api.g.dart';

@riverpod
class TodosApi extends _$TodosApi {
  late final ApiManager _apiManager;

  @override
  Future<TodosResponse> build(ApiManager apiManager) async {
    _apiManager = apiManager;
    return getTodos();
  }

  Future<TodosResponse> getTodos() async {
    final json = await _apiManager.get(Apis.getTodos);
    return TodosResponse.fromJson(json);
  }
}
