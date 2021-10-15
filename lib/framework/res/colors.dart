import 'package:flutter/material.dart';

class ColorsRes extends Color{

  ColorsRes(int color) : super(color);

  static const Color PRIMARY = Color.fromRGBO(102, 68, 184, 1);
  static const Color PRIMARY_30 = Color.fromRGBO(102, 68, 184, 0.3);
  static const Color SECONDARY = Color.fromRGBO(255, 143, 198, 1);
  static const Color SECONDARY_30 = Color.fromRGBO(255, 143, 198, 0.3);

  static const Color BACKGROUND = Color.fromRGBO(23, 8, 42, 1);
  static const Color BACKGROUND_30 = Color.fromRGBO(23, 8, 42, 0.3);

  static const Color WHITE = Color.fromRGBO(255, 255, 255, 1);
  static const Color BLACK = Color.fromRGBO(0, 0, 0, 1);
  static const Color TRANSPARENT = Color.fromRGBO(0, 0, 0, 0);

  static const Color TEXT_COLOR = Color.fromRGBO(188, 183, 195, 1);
  static const Color TITLE_TEXT_COLOR = Color.fromRGBO(255, 255, 255, 1);

  static const Color BUTTON_BACKGROUND = Color.fromRGBO(102, 68, 184, 1);
  static const Color SEARCH_ROW_BACKGROUND = Color.fromRGBO(255, 255, 255, 0.3);
}
