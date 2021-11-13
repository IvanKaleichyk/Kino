import 'package:flutter/material.dart';
import 'package:kino/framework/res/fonts.dart';

import 'framework/res/colors.dart';
import 'framework/widgets/button.dart';
import 'framework/widgets/text.dart';

ThemeData getDefaultThemeData() => ThemeData(
    scaffoldBackgroundColor: ColorsRes.BACKGROUND,
    fontFamily: Font.ROBOT,
    primaryColor: Colors.red,
    textTheme: getBaseTextTheme(),
    buttonTheme: getBaseButtonTheme());

TextTheme getBaseTextTheme() => TextTheme(
      bodyText2: getDefaultTextStyle(),
      button: getBaseButtonTextStyle(),
    );

ButtonThemeData getBaseButtonTheme() => const ButtonThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
