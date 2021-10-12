import 'package:flutter/material.dart';
import 'package:kino/framework/res/fonts.dart';

import 'framework/res/colors.dart';
import 'framework/res/dimens.dart';

ThemeData getDefaultThemeData() => ThemeData(
    scaffoldBackgroundColor: ColorsRes.BACKGROUND,
    fontFamily: Font.ROBOT,
    primaryColor: Colors.red,
    textTheme: getBaseTextTheme());

TextTheme getBaseTextTheme() => TextTheme(bodyText2: getDefaultTextStyle());

TextStyle getDefaultTextStyle() => const TextStyle(
    fontFamily: Font.ROBOT,
    fontSize: Dimens.BASE_TEXT_SIZE,
    color: ColorsRes.TEXT_COLOR);
