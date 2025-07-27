import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_tasks/day12/cubit/tasks_states.dart';

class TasksCubit extends Cubit<TasksStates> {
  TasksCubit() : super(TasksInitialStates());

  static TasksCubit get(context) => BlocProvider.of(context);

  List<String> tasks = [];
  List<String> descriptions = [];

  void addTask(String task, String description) {
    tasks.add(task);
    descriptions.add(description);
    emit(AddTaskState());
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    descriptions.removeAt(index);
    emit(DeleteTaskState());
  }
}
