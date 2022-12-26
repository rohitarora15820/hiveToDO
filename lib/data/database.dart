import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
//reference the box
  final _myBox = Hive.box('mytodo');
//loadf this data first time
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOList");
  }

  void updateData() {
    _myBox.put("TODOList", toDoList);
  }
}
