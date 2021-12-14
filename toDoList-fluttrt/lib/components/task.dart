class Task {
  String name;
  bool isDone;
  Task({this.isDone, this.name});
  void toggleDone() {
    isDone = !isDone;
  }
}
