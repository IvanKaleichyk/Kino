import 'package:flutter/material.dart';
import 'package:kino/framework/extensions/image_extensions.dart';
import 'package:kino/framework/res/colors.dart';
import 'package:kino/framework/res/images.dart';
import 'package:kino/framework/res/string_key.dart';
import 'package:kino/framework/widgets/text.dart';

import 'input_text.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          decoration: getBackgroundDecoration(),
          width: double.infinity,
          height: 44,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Material(
                  color: ColorsRes.SECONDARY_30,
                  child: IconButton(
                      onPressed: () {},
                      icon: getImage(IC_SEARCH, width: 32, height: 32))),
              const SizedBox(width: 5),
              Expanded(
                child: TextFormField(
                  autocorrect: true,
                  cursorColor: ColorsRes.WHITE,
                  textInputAction: TextInputAction.search,
                  decoration:
                      getTransparentInputDecoration(hint: StringKey.SEARCH),
                  style: getDefaultTextStyle(color: ColorsRes.WHITE),
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
      );

  Decoration getBackgroundDecoration() => const BoxDecoration(
      // borderRadius: BorderRadius.all(Radius.circular(16)),
      color: ColorsRes.SEARCH_ROW_BACKGROUND);
}
