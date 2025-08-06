import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/constants.dart';
import 'package:graduation_project/models/search_model/results.dart';

class BookMarksPageMovieImage extends StatelessWidget {
  const BookMarksPageMovieImage({
    super.key,
    required this.movies,
    required this.index,
  });

  final List<Results> movies;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: '$baseImage${movies[index].posterPath}',
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(color: Color(0xFF67686d)),
          ),
          errorWidget: (context, url, error) =>
              const Icon(Icons.error, color: Color(0xFF67686d)),
        ),
      ),
    );
  }
}

