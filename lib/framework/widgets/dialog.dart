import 'package:flutter/material.dart';
import 'package:kino/framework/res/string_key.dart';

Future<void> getDialog(BuildContext context, Widget dialog) async =>
    showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => dialog);

class BaseAlertDialog extends StatelessWidget {
  final String title;
  final String body;

  final bool isNegativeButtonVisible;
  final StringKey negativeButtonText;

  final StringKey positiveButtonText;

  final Function()? onPositiveTapAction;

  final Function()? onNegativeTapAction;

  const BaseAlertDialog(
      {Key? key,
      required this.title,
      required this.body,
      this.isNegativeButtonVisible = false,
      this.negativeButtonText = StringRes.CANCEL,
      this.positiveButtonText = StringRes.OK,
      this.onPositiveTapAction,
      this.onNegativeTapAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) => AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Text(body),
          ),
          actions: <Widget>[
            if (isNegativeButtonVisible)
              TextButton(
                onPressed: onNegativeTapAction,
                child: Text(negativeButtonText),
              ),
            TextButton(
                onPressed: onPositiveTapAction, child: Text(positiveButtonText))
          ]);
}
