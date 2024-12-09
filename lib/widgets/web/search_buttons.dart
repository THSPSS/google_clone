import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SearchButton(title: 'Google Search'),
            SizedBox(
              width: 10.0,
            ),
            SearchButton(title: 'I\'m feeling good'),
          ],
        )
      ],
    );
  }
}
