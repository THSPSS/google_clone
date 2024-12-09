import 'package:flutter/material.dart';

import 'language_text.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text('Google Offered in : '),
        SizedBox(
          width: 5,
        ),
        LanguageText(title: 'Korean'),
      ],
    );
  }
}
