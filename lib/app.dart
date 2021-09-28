import 'package:flutter/material.dart';
import 'package:kino/framework/res/fonts.dart';

import 'framework/extensions/color_extensions.dart';
import 'framework/res/colors.dart';
import 'framework/res/dimens.dart';

ThemeData getDefaultThemeData() => ThemeData(
    backgroundColor: getColor(ColorsHexAssets.BACKGROUND),
    fontFamily: FontAssets.ROBOT,
    primaryColor: getColor(ColorsHexAssets.PRIMARY),
    textTheme: getBaseTextTheme()
);

TextTheme getBaseTextTheme() =>
    TextTheme(
        bodyText2: getDefaultTextStyle()
    );

TextStyle getDefaultTextStyle() =>
    TextStyle(fontFamily: FontAssets.ROBOT,
        fontSize: Dimens.BASE_TEXT_SIZE,
        color: getColor(ColorsHexAssets.TEXT_COLOR));