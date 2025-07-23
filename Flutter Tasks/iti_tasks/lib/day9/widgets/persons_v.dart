import 'package:flutter/material.dart';
import 'package:iti_tasks/day9/data_model.dart';

class PersonV extends StatelessWidget {
  const PersonV({super.key, required this.dataModels});

  final List<DataModel> dataModels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(30),
                  offset: Offset(0, 10),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(image: NetworkImage(dataModels[index].image)),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    dataModels[index].name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        );
      },

      itemCount: dataModels.length,
    );
  }
}
