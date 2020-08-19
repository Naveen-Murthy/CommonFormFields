import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle font_14 = TextStyle(
      fontSize: 14, height: 1.5);


  static const TextStyle font_24 =
  TextStyle( fontSize: 24);

  static BoxDecoration button_styles = BoxDecoration(
      color: Colors.transparent,
      border: Border.all(
          color: Color(0xFFFF1820), style: BorderStyle.solid, width: 3),
      borderRadius: BorderRadius.circular(30));

  static const TextStyle hint_style = TextStyle(
    color: Color.fromRGBO(132, 132, 132, 1),
    fontSize: 18,
  );

}