import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kino/di/di.dart';
import 'package:kino/framework/extensions/image_extensions.dart';
import 'package:kino/framework/fragments/start/bloc/start_bloc.dart';
import 'package:kino/framework/res/images.dart';
import 'package:kino/framework/res/string_key.dart';
import 'package:kino/framework/widgets/button.dart';
import 'package:kino/framework/widgets/dialog.dart';
import 'package:kino/framework/widgets/progress_bar.dart';
import 'package:kino/framework/widgets/text.dart';

import '../navigator/start_navigator.dart';


class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<StartBloc, StartState>(
          builder: (BuildContext context, StartState state) {
            if (state is StartStateLoading)
              return Center(child: baseProgressBar());
            else
              return const _Content();
          }
      );
}

class _Content extends StatelessWidget {
  const _Content() : super();

  @override
  Widget build(BuildContext context) =>
      Container(
        padding: const EdgeInsetsDirectional.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[_Info(), _Footer()],
        ),
      );
}

class _Info extends StatelessWidget {
  const _Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Expanded(
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
  Widget build(BuildContext context) =>
      Column(
        children: <Widget>[
          TitleText(StringRes.APP_NAME.tr(), fontSize: 32),
          const SizedBox(height: 5),
          Text(StringRes.APP_DESCRIPTION.tr(), textAlign: TextAlign.center)
        ],
      );
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  void _goToAuthPage() {
    getIt<StartNavigator>().moveToAuthentication();
  }

  @override
  Widget build(BuildContext context) =>
      Expanded(
        flex: 2,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 100,
            child: Column(
              children: <Widget>[
                Button(() => _showWelcomeDialog(context),
                    Text(StringRes.GET_START.tr())),
                const SizedBox(height: 7),
                InfoText("Read the", mainText: "Terms of Uses")
              ],
            ),
          ),
        ),
      );

  void _showWelcomeDialog(BuildContext context) {
    final String title = StringRes.DIALOG_WELCOME_TITLE.tr();
    final String body = StringRes.DIALOG_WELCOME_INFO.tr();
    getDialog(
        context,
        BaseAlertDialog(
          title: title,
          body: body,
          onPositiveTapAction: () => _closeDialogAndGoToAuthPage(context),
        ));
  }

  void _closeDialogAndGoToAuthPage(BuildContext context) {
    Navigator.of(context).pop();
    _goToAuthPage();
  }
}