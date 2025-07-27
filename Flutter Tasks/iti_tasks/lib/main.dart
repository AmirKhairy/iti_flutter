import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_tasks/day12/cubit/tasks_cubit.dart';
import 'package:iti_tasks/day12/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Day12TasksScreen(),
      ),
    );
  }
}
