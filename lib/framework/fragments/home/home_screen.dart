import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kino/framework/res/colors.dart';
import 'package:kino/framework/res/string_key.dart';
import 'package:kino/framework/widgets/search_row.dart';
import 'package:kino/framework/widgets/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        resizeToAvoidBottomInset: false,
        body: HomePage(),
        backgroundColor: ColorsRes.PRIMARY,
      );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: const <Widget>[
          Expanded(flex: 4, child: _Header()),
          Expanded(flex: 6, child: _Content())
        ],
      );
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TitleText(
              StringRes.WELCOME_TEXT.tr(),
              fontSize: 32,
            ),
            const SearchRow()
          ],
        ),
      );
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  Radius getTopRadius() => const Radius.circular(24);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: ColorsRes.BACKGROUND,
          boxShadow: const <BoxShadow>[BoxShadow()],
          borderRadius: BorderRadius.only(
              topLeft: getTopRadius(), topRight: getTopRadius()),
        ),
      );
}
