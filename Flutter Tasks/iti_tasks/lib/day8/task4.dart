import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Task 4', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff214197),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              // heading
              Text(
                'HEADING',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              // subheading
              Text(
                'This is a subheading',
                style: TextStyle(color: Color(0xFF717070), fontSize: 14),
              ),
              Row(
                spacing: 40,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // login button
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff214197),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 100,
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
                  // click me button
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff214197), width: 2),
                    ),
                    width: 100,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
