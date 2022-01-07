class TodoModel {
  late final int userId;
  late final int id;
  late final String title;
  late final bool completed;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  static TodoModel fromMap(Map<String, dynamic> map) {
    return TodoModel(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
      completed: map['completed'],
    );
  }
}
