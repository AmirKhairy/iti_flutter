import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/models/search_model/results.dart';
import 'package:graduation_project/models/search_model/search_model.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit_state.dart';
import 'package:graduation_project/presentation/pages/book_marks_page.dart';
import 'package:graduation_project/presentation/pages/search_page.dart';
import 'package:graduation_project/services/api/dio_client.dart';
import 'package:graduation_project/services/api/endpoints.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit() : super(SearchCubitInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [SearchPage(), BookMarksPage()];

  int navBarIndex = 0;
  void changeNavBarIndex(int index) {
    navBarIndex = index;
    emit(ChangeNavBarIndexState());
  }

  DioClient dioClient = DioClient(Dio());

  SearchModel? searchModel;

  void getSearch({required String text}) async {
    emit(SearchLoadingState());

    try {
      Response response = await dioClient.get(
        Endpoints.searchMovie,
        queryParameters: {
          'query': text,
          'include_adult': 'false',
          'language': 'en-US',
          'page': '1',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        searchModel = SearchModel.fromJson(response.data);

        emit(SearchSuccessState());
      }
    } catch (e) {
      emit(SearchErrorState());
      log('search error: ${e.toString()}');
    }
  }

  List<Results> bookMarks = [];
  void addToBookMark(int id) {
    var movieBox = Hive.box<Results>('results');
    movieBox.add(searchModel!.results![id]);
    bookMarks.clear();
    bookMarks = movieBox.values.toList();
    emit(AddToBookMarkState());
  }

  void getBookMarks() {
    var movieBox = Hive.box<Results>('results');
    bookMarks.clear();
    bookMarks = movieBox.values.toList();
    emit(AddToBookMarkState());
  }

  void removeFromBookMark(int movieId) {
    var movieBox = Hive.box<Results>('results');
    try {
      final key = movieBox.keys.firstWhere(
        (k) => movieBox.get(k)?.id == movieId,
        orElse: () => null,
      );

      if (key != null) {
        movieBox.delete(key);
        bookMarks = movieBox.values.toList();
        emit(DeleteFromBookMarkState());
      }
    } catch (e) {
      log('Error deleting bookmark: $e');
    }
  }
}
