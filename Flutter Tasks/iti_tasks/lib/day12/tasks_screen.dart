import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_tasks/day12/cubit/tasks_cubit.dart';
import 'package:iti_tasks/day12/cubit/tasks_states.dart';
import 'package:iti_tasks/day12/new_task_screen.dart';
import 'package:iti_tasks/day12/widgets/task_widget.dart';

class Day12TasksScreen extends StatelessWidget {
  const Day12TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<TasksCubit, TasksStates>(
          builder: (context, state) {
            var cubit = TasksCubit.get(context);
            return cubit.tasks.isEmpty
                ? Center(
                    child: Text(
                      'No Tasks',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return TaskWidget(cubit: cubit, index: index);
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: cubit.tasks.length,
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Day12NewTaskScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
