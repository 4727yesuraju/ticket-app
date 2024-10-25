import "package:flutter/material.dart";

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xff3b3b3b);

  static TextStyle headLineStyle1 = TextStyle( //dinamic widget due to it depend's on textColor
      fontSize : 26,
      fontWeight : FontWeight.bold ,
      color : textColor
  );
  static TextStyle headLineStyle3 = const TextStyle(
      fontSize : 17,
      fontWeight : FontWeight.w500
  );
}