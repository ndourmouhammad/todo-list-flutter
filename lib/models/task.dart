class TaskModel {
  // Proprietes, constructeurs, et methodes ici...

  final int? id;
  final String task;
  final bool done;
  final String created_at;

  TaskModel({
    this.id,
    required this.task,
    required this.done,
    required this.created_at,
});

  // ... methodes de conversion
factory TaskModel.fromJson(Map<String, dynamic> json) {
  return TaskModel(
    id: json['id'],
    task: json['task'],
    done: json['done'],
    created_at: json['created_at'],
  );
}

Map<String, dynamic> toJson() {
  return {
    'id': id,
    'task': task,
    'done': done,
    'created_at': created_at
  };
}
}