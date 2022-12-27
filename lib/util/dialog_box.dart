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
      backgroundColor: Colors.black,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Add task here
          TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            controller: controller,
            decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: "Add a New task"),
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
              const SizedBox(
                width: 10,
              ),
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
