import 'package:flutter/material.dart';
import 'package:graduation_project/models/search_model/results.dart';

class BookMarksPageMovieDetailsImage extends StatelessWidget {
  const BookMarksPageMovieDetailsImage({
    super.key,
    required this.movies,
    required this.index,
  });

  final List<Results> movies;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${movies[index].title}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.star, color: Color(0xFFff8700), size: 16),
              const SizedBox(width: 5),
              Text(
                '${movies[index].voteAverage}',
                style: const TextStyle(color: Color(0xFFff8700), fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 16, color: Colors.white),
              const SizedBox(width: 5),
              Text(
                '${movies[index].releaseDate}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.lock, size: 16, color: Colors.white),
              const SizedBox(width: 5),
              Text(
                movies[index].adult == true ? '18+' : 'All Ages',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.people, size: 16, color: Colors.white),
              const SizedBox(width: 5),
              Text(
                '${movies[index].popularity}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

