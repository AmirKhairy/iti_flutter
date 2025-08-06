import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit_state.dart';
import 'package:graduation_project/presentation/widgets/search_page_widgets/search_page_error_widget.dart';
import 'package:graduation_project/presentation/widgets/search_page_widgets/search_page_grid_view.dart';
import 'package:graduation_project/presentation/widgets/search_page_widgets/search_page_loading_indicator.dart';
import 'package:graduation_project/presentation/widgets/search_page_widgets/search_page_text_field.dart';
import 'package:graduation_project/presentation/widgets/search_page_widgets/search_page_title_text.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
      builder: (context, state) {
        var cubit = SearchCubit.get(context);
        return Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchPageTitleText(),
              SizedBox(height: 20),
              SearchPageTextField(
                textEditingController: textEditingController,
                cubit: cubit,
              ),

              if (state is SearchLoadingState) SearchPageLoadingIndicator(),
              if (state is SearchErrorState) SearchPageErrorWidget(),
              if (state is SearchSuccessState ||
                  cubit.searchModel?.results?.isNotEmpty == true)
                SearchPageGridView(cubit: cubit),
            ],
          ),
        );
      },
    );
  }
}
