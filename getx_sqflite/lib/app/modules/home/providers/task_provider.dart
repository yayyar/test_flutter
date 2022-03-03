import 'package:get/get.dart';

import '../task_model.dart';

class TaskProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Task.fromJson(map);
      if (map is List) return map.map((item) => Task.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Task?> getTask(int id) async {
    final response = await get('task/$id');
    return response.body;
  }

  Future<Response<Task>> postTask(Task task) async => await post('task', task);
  Future<Response> deleteTask(int id) async => await delete('task/$id');
}
