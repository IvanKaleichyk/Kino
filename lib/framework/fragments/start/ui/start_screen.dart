import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kino/core/auth/data/auth_repository.dart';
import 'package:kino/di/di.dart';
import 'package:kino/framework/fragments/start/bloc/start_bloc.dart';
import 'package:kino/framework/fragments/start/navigator/start_navigator.dart';
import 'package:kino/framework/fragments/start/ui/start_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: BlocProvider<StartBloc>(
        create: (_) =>
            StartBloc(getIt<AuthRepository>(), getIt<StartNavigator>()),
        child: const StartPage(),
      ));
}
