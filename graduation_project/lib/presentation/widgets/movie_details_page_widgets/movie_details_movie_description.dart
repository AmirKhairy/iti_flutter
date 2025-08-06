import 'package:flutter/material.dart';
import 'package:graduation_project/models/search_model/results.dart';

class MovieDetailsMovieDescription extends StatelessWidget {
  const MovieDetailsMovieDescription({
    super.key,
    required this.movie,
  });

  final Results? movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        movie?.overview ??
            'No description available for this movie.',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

