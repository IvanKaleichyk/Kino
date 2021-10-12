import 'package:easy_localization/easy_localization.dart';
import "package:flutter/material.dart";
import 'package:kino/app.dart';
import 'package:kino/framework/fragments/start/start_screen.dart';
import 'package:kino/framework/res/assets_const.dart';
import 'package:kino/framework/res/string_key.dart';
import 'package:kino/language_const.dart';

import 'di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await configureInjection();

  runApp(EasyLocalization(
      supportedLocales: const <Locale>[Locale(LanguageCode.EN)],
      useOnlyLangCode: true,
      fallbackLocale: const Locale(LanguageCode.EN),
      path: AssetsConst.LANGUAGE_ASSETS_PATH,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        title: StringKey.APP_NAME.tr(),
        theme: getDefaultThemeData(),
        home: const StartScreen(),
      );
}
