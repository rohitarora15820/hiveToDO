import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCOmpleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  ToDoTile(
      {Key? key,
      required this.taskName,
      required this.taskCOmpleted,
      required this.onChanged,
      required this.deleteFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade200,
            borderRadius: BorderRadius.circular(12),
          )
        ], motion: StretchMotion()),
        child: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              //checkBox
              Checkbox(
                checkColor: Colors.black,
                fillColor: MaterialStateProperty.all(Colors.white),
                value: taskCOmpleted,
                onChanged: onChanged,
                activeColor: Colors.white,
              ),

              //task name
              Text(
                taskName,
                style: TextStyle(
                    color: Colors.white,
                    decorationThickness: 2,
                    decoration: taskCOmpleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
