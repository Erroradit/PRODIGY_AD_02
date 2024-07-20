class Task {
  String title;
  String? description;
  bool isCompleted;
  DateTime? dueDate;
  int priority;

  Task({
    required this.title,
    this.description,
    this.isCompleted = false,
    this.dueDate,
    this.priority = 1,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'dueDate': dueDate?.toIso8601String(),
      'priority': priority,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'],
      description: map['description'],
      isCompleted: map['isCompleted'],
      dueDate: map['dueDate'] != null ? DateTime.parse(map['dueDate']) : null,
      priority: map['priority'],
    );
  }
}
