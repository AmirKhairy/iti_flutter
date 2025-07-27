import 'package:flutter/material.dart';
import 'package:iti_tasks/day11/data_model2.dart';
import 'package:iti_tasks/day11/widgets/persons_grid2.dart';
import 'package:iti_tasks/day11/widgets/persons_h2.dart';
import 'package:iti_tasks/day11/widgets/persons_v2.dart';
import 'package:iti_tasks/day9/widgets/custom_text.dart';

class Day11Task1 extends StatefulWidget {
  const Day11Task1({super.key});

  @override
  State<Day11Task1> createState() => _Day11Task4State();
}

class _Day11Task4State extends State<Day11Task1> {
  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    final List<DataModel2> dataModels = [
      DataModel2(name: 'Name 1', image: 'https://i.pravatar.cc/150?img=0'),
      DataModel2(name: 'Name 2', image: 'https://i.pravatar.cc/150?img=1'),
      DataModel2(name: 'Name 3', image: 'https://i.pravatar.cc/150?img=2'),
      DataModel2(name: 'Name 4', image: 'https://i.pravatar.cc/150?img=3'),
      DataModel2(name: 'Name 5', image: 'https://i.pravatar.cc/150?img=4'),
      DataModel2(name: 'Name 6', image: 'https://i.pravatar.cc/150?img=5'),
      DataModel2(name: 'Name 7', image: 'https://i.pravatar.cc/150?img=6'),
      DataModel2(name: 'Name 8', image: 'https://i.pravatar.cc/150?img=7'),
      DataModel2(name: 'Name 9', image: 'https://i.pravatar.cc/150?img=8'),
      DataModel2(name: 'Name 10', image: 'https://i.pravatar.cc/150?img=9'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Day 11 Task 1',
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
                child: PersonsH2(dataModels: dataModels),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  CustomText(text: "Your old friends"),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isGrid = !isGrid;
                      });
                    },
                    icon: isGrid
                        ? const Icon(Icons.grid_view)
                        : const Icon(Icons.list),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: isGrid
                  ? PersonsGrid2(dataModels: dataModels)
                  : PersonV2(dataModels: dataModels),
            ),
          ],
        ),
      ),
    );
  }
}
