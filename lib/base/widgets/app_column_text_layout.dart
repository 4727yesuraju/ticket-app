import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_file_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: alignment,
          children : [
              TextFileThird(text : topText),
              const SizedBox(height : 5),
              TextFileThird(text : bottomText)
            ]
      );
  }
}