import 'package:flutter/material.dart';
import 'package:hivetodo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Add task here
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Add a New task"),
          ),

          //Add Save & Cancel Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                  onPressed: () {
                    onSave();
                  },
                  text: 'Save'),
              MyButton(
                  onPressed: () {
                    onCancel();
                  },
                  text: 'Cancel')
            ],
          )
        ]),
      ),
    );
  }
}
