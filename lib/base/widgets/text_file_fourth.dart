import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextFileFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextFileFourth({super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign : align,
      style : AppStyles.headLineStyle4.copyWith(color : Colors.white)
    );
  }
}