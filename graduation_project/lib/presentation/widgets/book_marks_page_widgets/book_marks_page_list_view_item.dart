import 'package:flutter/material.dart';
import 'package:graduation_project/models/search_model/results.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:graduation_project/presentation/pages/movie_details_page.dart';
import 'package:graduation_project/presentation/widgets/book_marks_page_widgets/book_marks_page_movie_book_mark_icon.dart';
import 'package:graduation_project/presentation/widgets/book_marks_page_widgets/book_marks_page_movie_details_image.dart';
import 'package:graduation_project/presentation/widgets/book_marks_page_widgets/book_marks_page_movie_image.dart';

class BookMarksPageListViewItem extends StatelessWidget {
  const BookMarksPageListViewItem({
    super.key,
    required this.movies,
    required this.cubit,
    required this.index,
  });

  final List<Results> movies;
  final SearchCubit cubit;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetailsPage(movie: movies[index]),
              ),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookMarksPageMovieImage(movies: movies, index: index),
              const SizedBox(width: 16),
              BookMarksPageMovieDetailsImage(movies: movies, index: index),
            ],
          ),
        ),
        BookMarksPageMovieBookMarkIcon(
          cubit: cubit,
          movies: movies,
          index: index,
        ),
      ],
    );
  }
}
