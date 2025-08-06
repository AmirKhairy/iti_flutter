import 'package:flutter/material.dart';
import 'package:graduation_project/models/search_model/results.dart';

class MovieDetailsInfoRow extends StatelessWidget {
  const MovieDetailsInfoRow({super.key, required this.movie});

  final Results? movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Release date
          const Icon(Icons.calendar_today, size: 16, color: Color(0xFF7e7f89)),
          const SizedBox(width: 4),
          Text(
            '${movie?.releaseDate}',
            style: const TextStyle(color: Color(0xFF7e7f89)),
          ),
          const SizedBox(width: 6),

          // Separator
          Text(' | ', style: TextStyle(color: Color(0xFF7e7f89), fontSize: 20)),
          const SizedBox(width: 6),
          // Original language
          const Icon(Icons.language, size: 16, color: Color(0xFF7e7f89)),
          const SizedBox(width: 4),
          Text(
            '${movie?.originalLanguage}',
            style: const TextStyle(color: Color(0xFF7e7f89)),
          ),
          const SizedBox(width: 6),

          // Separator
          Text(' | ', style: TextStyle(color: Color(0xFF7e7f89), fontSize: 20)),
          const SizedBox(width: 6),

          // Vote count
          const Icon(Icons.people, size: 16, color: Color(0xFF7e7f89)),
          const SizedBox(width: 4),
          Text(
            '${movie?.popularity}',
            style: const TextStyle(color: Color(0xFF7e7f89)),
          ),
        ],
      ),
    );
  }
}
