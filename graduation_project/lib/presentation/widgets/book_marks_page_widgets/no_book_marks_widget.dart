import 'package:flutter/material.dart';

class NoBookMarksWidget extends StatelessWidget {
  const NoBookMarksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No BookMarks",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

