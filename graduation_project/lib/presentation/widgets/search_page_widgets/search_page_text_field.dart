import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';

class SearchPageTextField extends StatelessWidget {
  const SearchPageTextField({
    super.key,
    required this.textEditingController,
    required this.cubit,
  });

  final TextEditingController textEditingController;
  final SearchCubit cubit;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        fillColor: const Color(0xFF3a3f47),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        filled: true,
        hintText: 'Search',

        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: const Color(0xFF67686d),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            cubit.getSearch(text: textEditingController.text);
          },
          icon: Icon(Icons.search_rounded, color: const Color(0xFF67686d)),
        ),
      ),
      onSubmitted: (value) {
        cubit.getSearch(text: value);
      },
    );
  }
}

