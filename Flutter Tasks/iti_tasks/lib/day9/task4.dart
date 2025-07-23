import 'package:flutter/material.dart';
import 'package:iti_tasks/day9/data_model.dart';
import 'package:iti_tasks/day9/widgets/custom_text.dart';
import 'package:iti_tasks/day9/widgets/persons_grid.dart';
import 'package:iti_tasks/day9/widgets/persons_h.dart';

class Day9Task4 extends StatelessWidget {
  const Day9Task4({super.key});

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
          'Day 9 Task 4',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff214197),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomText(text: "Your online friends")),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: PersonsH(dataModels: dataModels),
              ),
            ),
            SliverToBoxAdapter(child: CustomText(text: "Your old friends")),
            SliverFillRemaining(child: PersonsGrid(dataModels: dataModels)),
          ],
        ),
      ),
    );
  }
}
