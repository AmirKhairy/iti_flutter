import 'package:flutter/material.dart';

class SearchPageTitleText extends StatelessWidget {
  const SearchPageTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'What do you want to watch?',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}

