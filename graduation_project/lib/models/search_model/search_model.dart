import 'package:graduation_project/models/search_model/results.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'search_model.g.dart';

@HiveType(typeId: 1)
class SearchModel {
  @HiveField(0)
  int? page;

  @HiveField(1)
  List<Results>? results;

  SearchModel({this.page, this.results});

  SearchModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    results = (json['results'] as List)
        .map((e) => Results.fromJson(e))
        .toList();
  }
}
