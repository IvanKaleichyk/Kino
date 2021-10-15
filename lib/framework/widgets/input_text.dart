import 'package:flutter/material.dart';
import 'package:kino/framework/widgets/text.dart';

InputDecoration getTransparentInputDecoration(
        {String hint = "", Widget? prefixIcon, Widget? suffixIcon}) =>
    InputDecoration(
      border: InputBorder.none,
      hintText: hint,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintStyle: getDefaultHintStyle(),
      focusedBorder: null,
      enabledBorder: null,
    );
