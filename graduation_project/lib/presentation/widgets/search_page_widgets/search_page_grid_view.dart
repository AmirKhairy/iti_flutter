import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:graduation_project/presentation/pages/movie_details_page.dart';
import 'package:graduation_project/presentation/widgets/search_page_widgets/image_container.dart';

class SearchPageGridView extends StatelessWidget {
  const SearchPageGridView({
    super.key,
    required this.cubit,
  });

  final SearchCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 13,
          mainAxisSpacing: 13,
          childAspectRatio: 2 / 3,
        ),
    
        itemCount: cubit.searchModel?.results?.length ?? 0,
        itemBuilder: (context, index) {
          final movie = cubit.searchModel?.results?[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MovieDetailsPage(movie: movie),
                ),
              );
            },
            child: ImageContainer(movie: movie),
          );
        },
      ),
    );
  }
}

