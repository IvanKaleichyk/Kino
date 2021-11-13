import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kino/di/di.dart';
import 'package:kino/framework/fragments/auth/tmdb/auth_tmdb_interactor.dart';
import 'package:kino/framework/fragments/auth/tmdb/bloc/auth_tmdb_bloc.dart';
import 'package:kino/framework/res/string_key.dart';
import 'package:kino/framework/widgets/dialog.dart';
import 'package:kino/framework/widgets/progress_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../auth_tmdb_interactor.dart';

class AuthTmdbPage extends StatelessWidget {
  const AuthTmdbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: BlocBuilder<AuthTmdbBloc, AuthTmdbState>(
            builder: (BuildContext context, AuthTmdbState state) {
          if (state is AuthTmdbStateLoadingUrl)
            return baseProgressBar();
          else if (state is AuthTmdbStateLoadedUrl)
            return AuthTmdbWebView(state.url);
          else if (state is AuthTmdbStateRequestDenied) {
            Future.delayed(
                Duration.zero, () => _showNotGetAccessDialog(context));
          }
          return baseProgressBar();
        }),
      );

  void _showNotGetAccessDialog(BuildContext context) {
    final String title = StringRes.DIALOG_NOT_GET_ACCESS_TITLE.tr();
    final String body = StringRes.DIALOG_NOT_GET_ACCESS_INFO.tr();
    getDialog(
        context,
        BaseAlertDialog(
          title: title,
          body: body,
          onPositiveTapAction: () => _closeDialogAndReloadUrl(context),
        ));
  }

  void _closeDialogAndReloadUrl(BuildContext context) {
    Navigator.of(context).pop();
    BlocProvider.of<AuthTmdbBloc>(context).add(AuthTmdbEventAuthGetUrl());
  }
}

class AuthTmdbWebView extends StatefulWidget {
  final String _url;

  const AuthTmdbWebView(this._url, {Key? key}) : super(key: key);

  @override
  _AuthTmdbWebViewState createState() => _AuthTmdbWebViewState(_url);
}

class _AuthTmdbWebViewState extends State<AuthTmdbWebView> {
  final String _url;

  _AuthTmdbWebViewState(this._url);

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => WebView(
      initialUrl: _url,
      javascriptMode: JavascriptMode.unrestricted,
      navigationDelegate: (NavigationRequest request) =>
          NavigationDecision.navigate,
      onPageStarted: (String url) {
        final AuthUrlState state = getIt<AuthTmdbInteractor>().handleUrl(url);
        handleOnPageStarted(context, state);
      });

  void handleOnPageStarted(BuildContext context, AuthUrlState state) {
    late AuthTmdbEvent event;
    if (state == AuthUrlState.allow)
      event = AuthTmdbEventAuthSuccessful();
    else if (state == AuthUrlState.deny) event = AuthTmdbEventAuthFailed();

    BlocProvider.of<AuthTmdbBloc>(context).add(event);
  }
}
