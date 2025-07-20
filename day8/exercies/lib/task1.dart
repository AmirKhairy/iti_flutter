import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Task 1', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff214197),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff214197),
            borderRadius: BorderRadius.circular(12),
          ),
          width: 200,
          height: 45,
          child: const Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
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
