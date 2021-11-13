import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kino/di/di.dart';
import 'package:kino/framework/fragments/auth/tmdb/auth_tmdb_interactor.dart';
import 'package:kino/framework/fragments/auth/tmdb/bloc/auth_tmdb_bloc.dart';
import 'package:kino/framework/fragments/auth/tmdb/navigator/auth_tmdb_navigator.dart';
import 'package:kino/framework/fragments/auth/tmdb/ui/auth_tmdb_page.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: BlocProvider<AuthTmdbBloc>(
        create: (_) => AuthTmdbBloc(
            getIt<AuthTmdbInteractor>(), getIt<AuthTmdbNavigator>()),
        child: const AuthTmdbPage(),
      ));
}
