import 'package:flutter/material.dart';
import 'package:iti_tasks/day9/data_model.dart';
import 'package:iti_tasks/day9/widgets/persons_h.dart';

class Day9Task1 extends StatelessWidget {
  const Day9Task1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DataModel> dataModels = [
      DataModel(name: 'Name 1', image: 'https://i.pravatar.cc/150?img=0'),
      DataModel(name: 'Name 2', image: 'https://i.pravatar.cc/150?img=1'),
      DataModel(name: 'Name 3', image: 'https://i.pravatar.cc/150?img=2'),
      DataModel(name: 'Name 4', image: 'https://i.pravatar.cc/150?img=3'),
      DataModel(name: 'Name 5', image: 'https://i.pravatar.cc/150?img=4'),
      DataModel(name: 'Name 6', image: 'https://i.pravatar.cc/150?img=5'),
      DataModel(name: 'Name 7', image: 'https://i.pravatar.cc/150?img=6'),
      DataModel(name: 'Name 8', image: 'https://i.pravatar.cc/150?img=7'),
      DataModel(name: 'Name 9', image: 'https://i.pravatar.cc/150?img=8'),
      DataModel(name: 'Name 10', image: 'https://i.pravatar.cc/150?img=9'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Day 9 Task 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff214197),
      ),
      body: PersonsH(dataModels: dataModels),
    );
  }
}
