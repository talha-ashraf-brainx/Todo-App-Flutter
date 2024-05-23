import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/core/constants/apis.dart';
import 'package:todo/features/todo/data/managers/api_manager/api_manager.dart';
import 'package:todo/features/todo/data/managers/api_manager/dio_api_manager.dart';
import 'package:todo/features/todo/data/models/todo.dart';
part 'todos_api.g.dart';

@riverpod
class TodosApi extends _$TodosApi {
  late final ApiManager? _apiManager = DioApiManager(Dio());

  @override
  void build(ApiManager apiManager) async {
    // _apiManager ??= apiManager;
  }

  Future<TodosResponse> getTodos() async {
    final json = await _apiManager!.get(Apis.getTodos);
    return TodosResponse.fromJson(json);
  }
}
