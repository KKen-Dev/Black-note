//class Task {
//  Task(String s, bool bool, [String string]);

//  String get taskId => null;

//  get title => null;
  
//}
class Task {
  List<Task> tasks;
  String note;
  DateTime timeToComplete;
  bool completed;
  String repeats;
  DateTime deadLine;
  List<DateTime> reminders;
  String taskId;
  String title;
  Task(this.title,this.completed, this.taskId);
  
}