import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/models/search_model/results.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit_state.dart';
import 'package:graduation_project/presentation/widgets/movie_details_page_widgets/movie_details_app_bar.dart';
import 'package:graduation_project/presentation/widgets/movie_details_page_widgets/movie_details_info_row.dart';
import 'package:graduation_project/presentation/widgets/movie_details_page_widgets/movie_details_movie_description.dart';
import 'package:graduation_project/presentation/widgets/movie_details_page_widgets/movie_details_original_title.dart';
import 'package:graduation_project/presentation/widgets/movie_details_page_widgets/movie_details_top_section.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movie});
  final Results? movie;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
      builder: (context, state) {
        var cubit = SearchCubit.get(context);

        bool isBookMarked = cubit.bookMarks.any((b) => b.id == movie?.id);
        return Scaffold(
          backgroundColor: const Color(0xFF242a32),
          appBar: MovieDetailsAppBar(
            isBookMarked: isBookMarked,
            cubit: cubit,
            movie: movie,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top section
                MovieDetailsTopSection(movie: movie),

                const SizedBox(height: 20),
                // Info row
                MovieDetailsInfoRow(movie: movie),

                const SizedBox(height: 24),
                // Original Title
                MovieDetailsOriginalTitle(movie: movie),

                const SizedBox(height: 16),

                // Movie Description
                MovieDetailsMovieDescription(movie: movie),
              ],
            ),
          ),
        );
      },
    );
  }
}

