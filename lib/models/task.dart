// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  String taskTitle;
  bool isDone;

  Task({
    required this.taskTitle,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}
