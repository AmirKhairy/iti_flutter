import 'package:flutter/material.dart';
import 'package:iti_tasks/day11/data_model2.dart';

class PersonsH2 extends StatelessWidget {
  const PersonsH2({super.key, required this.dataModels});

  final List<DataModel2> dataModels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(dataModels[index].image),
                    radius: 30,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  width: 80,
                  child: Text(
                    dataModels[index].name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 8);
        },
        itemCount: dataModels.length,
      ),
    );
  }
}
