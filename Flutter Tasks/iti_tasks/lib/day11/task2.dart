import 'package:flutter/material.dart';
import 'package:iti_tasks/day11/widgets/custom_text_form_field2.dart';

class Day11Task2 extends StatefulWidget {
  const Day11Task2({super.key});

  @override
  State<Day11Task2> createState() => _Day11Task2State();
}

class _Day11Task2State extends State<Day11Task2> {
  final textFieldController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Day 11 Task 2',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff214197),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: CustomTextFormField2(
              controller: textFieldController,
              hintText: '',
              isPassword: isPassword,
              keyboardType: TextInputType.text,
              validator: (value) {
                return null;
              },
              suffix: isPassword
                  ? IconButton(
                      icon: const Icon(
                        Icons.visibility,
                        color: Color(0xff491B6D),
                      ),
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                    )
                  : IconButton(
                      icon: const Icon(
                        Icons.visibility_off,
                        color: Color(0xff491B6D),
                      ),
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
