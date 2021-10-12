import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kino/framework/extensions/image_extensions.dart';
import 'package:kino/framework/res/images.dart';
import 'package:kino/framework/res/string_key.dart';
import 'package:kino/framework/widgets/button.dart';
import 'package:kino/framework/widgets/text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: StartPage(),
      );
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsetsDirectional.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[_Content(), _Footer()],
        ),
      );
}

class _Content extends StatelessWidget {
  const _Content() : super();

  @override
  Widget build(BuildContext context) => Expanded(
      flex: 8,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            getImage(APP_LOGO, width: 160),
            const AppDescription(),
          ]));
}

class AppDescription extends StatelessWidget {
  const AppDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          TitleText(StringKey.APP_NAME.tr(), fontSize: 32),
          const SizedBox(height: 5),
          Text(StringKey.APP_DESCRIPTION.tr(), textAlign: TextAlign.center)
        ],
      );
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  void goToAuthPage() {}

  @override
  Widget build(BuildContext context) => Expanded(
        flex: 2,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 100,
            child: Column(
              children: <Widget>[
                Button(goToAuthPage, Text(StringKey.GET_START.tr())),
                const SizedBox(height: 7),
                InfoText("Read the", mainText: "Terms of Uses")
              ],
            ),
          ),
        ),
      );
}
