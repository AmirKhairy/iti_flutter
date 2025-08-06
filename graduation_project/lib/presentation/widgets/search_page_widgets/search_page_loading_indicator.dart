import 'package:flutter/material.dart';

class SearchPageLoadingIndicator extends StatelessWidget {
  const SearchPageLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 2,
      child: CircularProgressIndicator(
        color: Color(0xFF67686d),
        strokeWidth: 2.5,
      ),
    );
  }
}

