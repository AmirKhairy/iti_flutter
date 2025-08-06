import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/models/search_model/results.dart';
import 'package:graduation_project/models/search_model/search_model.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:graduation_project/presentation/pages/home_layout.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(SearchModelAdapter());
  Hive.registerAdapter(ResultsAdapter());
  await Hive.openBox<SearchModel>('searchModel');
  await Hive.openBox<Results>('results');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit()..getBookMarks(),
      child: MaterialApp(home: HomeLayout(), debugShowCheckedModeBanner: false),
    );
  }
}
