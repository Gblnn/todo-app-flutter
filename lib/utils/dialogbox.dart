import 'package:flutter/material.dart';
import 'package:todo_app/utils/custom_button.dart';

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;

  // ignore: prefer_typing_uninitialized_variables
  final onSave;
  final VoidCallback onCancel;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Add a new task",
                // border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(10)
                //     )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //Cancel Button
                CustomButton(text: 'Cancel', onPressed: onCancel),
                //Save Button
                CustomButton(text: 'Save', onPressed: onSave),
              ],
            )
          ],
        ),
      ),
    );
  }
}
