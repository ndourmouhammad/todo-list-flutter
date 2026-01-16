import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/api_service.dart';

class TaskProvider extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<TaskModel> _tasks = [];

  List<TaskModel> get tasks => _tasks;

  Future<void> fetchTasks() async {
    _tasks = await _apiService.getTasks();
    notifyListeners();
  }

  Future<void> addTask(TaskModel task) async {
    await _apiService.addTask(task);
    await fetchTasks();
  }

  Future<void> updateTask(TaskModel task) async {
    await _apiService.updateTask(task);
    await fetchTasks();
  }

  Future<void> deleteTask(TaskModel task) async {
    await _apiService.deleteTask(task);
    await fetchTasks();
  }
}
