import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/models/search_model/results.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit_state.dart';
import 'package:graduation_project/presentation/widgets/book_marks_page_widgets/book_marks_page_app_bar_widget.dart';
import 'package:graduation_project/presentation/widgets/book_marks_page_widgets/book_marks_page_list_view_item.dart';
import 'package:graduation_project/presentation/widgets/book_marks_page_widgets/no_book_marks_widget.dart';

class BookMarksPage extends StatelessWidget {
  const BookMarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
      builder: (context, state) {
        var cubit = SearchCubit.get(context);
        List<Results> movies = cubit.bookMarks;
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 42),
          child: Column(
            children: [
              BookMarksPageAppBarWidget(cubit: cubit),
              movies.isEmpty
                  ? NoBookMarksWidget()
                  : Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return BookMarksPageListViewItem(
                            movies: movies,
                            cubit: cubit,
                            index: index,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                        itemCount: movies.length,
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
