import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  //referencing hive box
  final _box = Hive.box("NewBox");

  //load data
  void loadData() {
    toDoList = _box.get("TODOLIST");
  }

  //update data
  void updateData() {
    _box.put("TODOLIST", toDoList);
  }
}
