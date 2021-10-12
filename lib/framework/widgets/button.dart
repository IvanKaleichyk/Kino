import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kino/framework/res/colors.dart';
import 'package:kino/framework/res/dimens.dart';
import 'package:kino/framework/res/fonts.dart';

class Button extends ElevatedButton {
  Button(VoidCallback onTap, Widget child, {Key? key})
      : super(
          key: key,
          onPressed: onTap,
          child: child,
          style: getBaseButtonStyle(),
        );
}

ButtonStyle getBaseButtonStyle() => ElevatedButton.styleFrom(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    primary: ColorsRes.BUTTON_BACKGROUND,
    fixedSize: const Size(200, 50),
    textStyle: const BaseButtonTextStyle());

class BaseButtonTextStyle extends TextStyle {
  const BaseButtonTextStyle()
      : super(fontWeight: Font.MEDIUM, fontSize: Dimens.BUTTON_TEXT_SIZE);
}
