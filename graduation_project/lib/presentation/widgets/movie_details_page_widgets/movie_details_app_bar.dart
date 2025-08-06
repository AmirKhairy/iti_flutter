import 'package:flutter/material.dart';
import 'package:graduation_project/models/search_model/results.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';

class MovieDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MovieDetailsAppBar({
    super.key,
    required this.isBookMarked,
    required this.cubit,
    required this.movie,
  });

  final bool isBookMarked;
  final SearchCubit cubit;
  final Results? movie;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF242a32),
      title: const Text(
        "Detail",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (isBookMarked) {
              cubit.removeFromBookMark(movie!.id!);
            } else {
              cubit.addToBookMark(cubit.searchModel!.results!.indexOf(movie!));
            }
          },
          icon: Icon(
            isBookMarked ? Icons.bookmark : Icons.bookmark_border,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
