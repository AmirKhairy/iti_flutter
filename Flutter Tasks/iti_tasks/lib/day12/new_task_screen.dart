import 'package:flutter/material.dart';
import 'package:iti_tasks/day12/cubit/tasks_cubit.dart';
import 'package:iti_tasks/day12/widgets/add_task_text_form_field_widget.dart';

class Day12NewTaskScreen extends StatelessWidget {
  Day12NewTaskScreen({super.key});

  final taskController = TextEditingController();
  final descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var cubit = TasksCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AddTaskTextFormFieldWidget(
                taskController: taskController,
                lable: 'name',
              ),
              const SizedBox(height: 16),
              AddTaskTextFormFieldWidget(
                taskController: descriptionController,
                lable: 'description',
              ),

              const SizedBox(height: 16),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.black),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    cubit.addTask(
                      taskController.text,
                      descriptionController.text,
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'Add task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
