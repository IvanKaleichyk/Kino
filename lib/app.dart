import 'package:flutter/material.dart';
import 'package:kino/framework/res/fonts.dart';

import 'framework/res/colors.dart';
import 'framework/widgets/text.dart';

ThemeData getDefaultThemeData() => ThemeData(
    scaffoldBackgroundColor: ColorsRes.BACKGROUND,
    fontFamily: Font.ROBOT,
    primaryColor: Colors.red,
    textTheme: getBaseTextTheme());

TextTheme getBaseTextTheme() => TextTheme(bodyText2: getDefaultTextStyle());