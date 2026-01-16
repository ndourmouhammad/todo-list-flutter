import 'package:dio/dio.dart';
import '../models/task.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      // l'IP de la machine
      baseUrl: 'http://10.54.188.174:8000',
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  // Renvoie une liste de TaskModel dans le futur
  Future<List<TaskModel>> getTasks() async {
    try {
      // 1. Fait l'appel GET à l'endpoint `/todo/tasks/`
      final response = await _dio.get('/todo/tasks/');
      // 2. Transforme la liste de JSON en liste de TaskModel
      return (response.data as List)
          .map((taskJson) => TaskModel.fromJson(taskJson))
          .toList();
    } catch (e) {
      // 3. En cas d'erreur, renvoie une liste vide
      print(e);
      return [];
    }
  }

  Future<void> addTask(TaskModel task) async {
    await _dio.post('/todo/tasks/', data: task.toJson());
  }

  Future<void> updateTask(TaskModel task) async {
    await _dio.put('/todo/tasks/${task.id}/', data: task.toJson());
  }

  Future<void> deleteTask(TaskModel task) async {
    await _dio.delete('/todo/tasks/${task.id}/');
  }
}
