import 'dart:ui';

import 'package:kino/framework/res/colors.dart';

ColorsRes getColor(String hex) => _HexColor.fromHex(hex);

extension _HexColor on Color {
  static ColorsRes fromHex(String hexString) {
    final StringBuffer buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return ColorsRes(int.parse(buffer.toString(), radix: 16));
  }

// String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
//     '${alpha.toRadixString(16).padLeft(2, '0')}'
//     '${red.toRadixString(16).padLeft(2, '0')}'
//     '${green.toRadixString(16).padLeft(2, '0')}'
//     '${blue.toRadixString(16).padLeft(2, '0')}';
}
