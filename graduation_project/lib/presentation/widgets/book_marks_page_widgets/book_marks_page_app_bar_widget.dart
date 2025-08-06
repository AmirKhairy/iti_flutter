import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';

class BookMarksPageAppBarWidget extends StatelessWidget {
  const BookMarksPageAppBarWidget({super.key, required this.cubit});

  final SearchCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            cubit.changeNavBarIndex(0);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Text(
            'Watch list',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }
}

