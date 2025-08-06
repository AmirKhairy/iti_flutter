import 'package:flutter/material.dart';
import 'package:graduation_project/models/search_model/results.dart';

class MovieDetailsOriginalTitle extends StatelessWidget {
  const MovieDetailsOriginalTitle({
    super.key,
    required this.movie,
  });

  final Results? movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: RichText(
        text: TextSpan(
          text: 'Original Title: ',
          style: const TextStyle(color: Colors.white, fontSize: 16),
          children: [
            TextSpan(
              text: '${movie?.originalTitle}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

