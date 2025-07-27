import 'package:flutter/material.dart';

class AddTaskTextFormFieldWidget extends StatelessWidget {
  const AddTaskTextFormFieldWidget({
    super.key,
    required this.taskController,
    required this.lable,
  });

  final TextEditingController taskController;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: taskController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        labelText: 'Enter a task $lable',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a task $lable';
        }
        return null;
      },
    );
  }
}
