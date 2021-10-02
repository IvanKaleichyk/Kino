import 'package:flutter/material.dart';
import 'package:kino/framework/extensions/color_extensions.dart';

class ColorsRes extends Color{

  ColorsRes(int color) : super(color);

  factory ColorsRes.primary() => getColor("#6644B8");
  factory ColorsRes.secondary() => getColor("#FF8FC6");

  factory ColorsRes.background() => getColor("#6644B8");

  factory ColorsRes.white() => getColor("#ffffff");
  factory ColorsRes.black() => getColor("#000000");

  factory ColorsRes.textColor() => getColor("#BCB7C3");
  factory ColorsRes.titleTextColor() => getColor("#ffffff");

  factory ColorsRes.buttonBackground() => getColor("#6644B8");
}
