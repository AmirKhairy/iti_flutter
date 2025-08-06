import 'package:flutter/material.dart';
import 'package:graduation_project/models/search_model/results.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';

class BookMarksPageMovieBookMarkIcon extends StatelessWidget {
  const BookMarksPageMovieBookMarkIcon({
    super.key,
    required this.cubit,
    required this.movies,
    required this.index,
  });

  final SearchCubit cubit;
  final List<Results> movies;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: IconButton(
        onPressed: () {
          cubit.removeFromBookMark(movies[index].id!);
        },
        icon: const Icon(Icons.bookmark, color: Colors.white),
      ),
    );
  }
}

