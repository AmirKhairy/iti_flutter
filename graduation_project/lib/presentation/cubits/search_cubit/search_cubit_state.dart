abstract class SearchCubitState {}

final class SearchCubitInitial extends SearchCubitState {}

final class ChangeNavBarIndexState extends SearchCubitState {}

final class SearchLoadingState extends SearchCubitState {}

final class SearchSuccessState extends SearchCubitState {}

final class SearchErrorState extends SearchCubitState {}

final class AddToBookMarkState extends SearchCubitState {}

final class DeleteFromBookMarkState extends SearchCubitState {}
