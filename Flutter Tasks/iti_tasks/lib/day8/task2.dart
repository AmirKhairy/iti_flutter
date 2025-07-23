import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Task 2', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff214197),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xff214197), width: 2),
          ),
          width: 200,
          height: 45,
          child: const Center(
            child: Text(
              'Click me',
              style: TextStyle(
                color: Color(0xff214197),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
