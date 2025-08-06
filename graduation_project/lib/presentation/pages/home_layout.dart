import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit.dart';
import 'package:graduation_project/presentation/cubits/search_cubit/search_cubit_state.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
      builder: (context, state) {
        var cubit = SearchCubit.get(context);
        return Scaffold(
          backgroundColor: const Color(0xFF242a32),

          body: cubit.screens[cubit.navBarIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFF242a32),
            currentIndex: cubit.navBarIndex,
            selectedItemColor: Color(0xFF0296e5),
            unselectedItemColor: Color(0xFF67686d),
            onTap: (index) {
              cubit.changeNavBarIndex(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: "Bookmarks",
              ),
            ],
          ),
        );
      },
    );
  }
}
