import "package:flutter/material.dart";

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle headLineStyle = TextStyle( //dinamic widget due to it depend's on textColor
      fontSize : 16,
      fontWeight : FontWeight.w500 ,
      color : textColor
  );
  static TextStyle headLineStyle1 = TextStyle( //dinamic widget due to it depend's on textColor
      fontSize : 26,
      fontWeight : FontWeight.bold ,
      color : textColor
  );
  static TextStyle headLineStyle2 = TextStyle( //dinamic widget due to it depend's on textColor
      fontSize : 21,
      fontWeight : FontWeight.bold ,
      color : textColor
  );
  static TextStyle headLineStyle3 = const TextStyle(
      fontSize : 17,
      fontWeight : FontWeight.w500
  );
}