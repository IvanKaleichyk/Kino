import 'package:flutter/material.dart';
import 'package:kino/framework/res/colors.dart';
import 'package:kino/framework/res/dimens.dart';
import 'package:kino/framework/res/fonts.dart';

class TitleText extends Text {
  TitleText(String text,
      {Key? key,
      FontWeight fontWeight = Font.BOLD,
      double fontSize = Dimens.TITLE_TEXT_SIZE,
      Color textColor = ColorsRes.TITLE_TEXT_COLOR})
      : super(text,
            key: key,
            style: getTitleTextStyle(
                fontWeight: fontWeight,
                fontSize: fontSize,
                textColor: textColor));
}

TextStyle getTitleTextStyle(
        {FontWeight fontWeight = Font.BOLD,
        double fontSize = Dimens.TITLE_TEXT_SIZE,
        Color textColor = ColorsRes.TITLE_TEXT_COLOR}) =>
    TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: textColor);

class InfoText extends RichText {
  InfoText(String text,
      {Key? key,
      double textSize = Dimens.INFO_TEXT_SIZE,
      Color? textColor = ColorsRes.TEXT_COLOR,
      String? mainText,
      Color? mainTextColor = ColorsRes.TITLE_TEXT_COLOR})
      : super(
            text: TextSpan(
                text: text,
                style: getInfoTextStyle(textColor, textSize: textSize),
                children: <TextSpan>[
                  if (mainText != null)
                    TextSpan(
                        text: " $mainText",
                        style:
                            TextStyle(color: mainTextColor, fontSize: textSize))
                ]),
            key: key);
}

TextStyle getDefaultTextStyle({Color color = ColorsRes.TEXT_COLOR}) =>
    TextStyle(
        fontFamily: Font.ROBOT, fontSize: Dimens.BASE_TEXT_SIZE, color: color);

TextStyle getInfoTextStyle(Color? textColor,
        {double textSize = Dimens.INFO_TEXT_SIZE}) =>
    TextStyle(color: textColor);

TextStyle getDefaultHintStyle() => getDefaultTextStyle();