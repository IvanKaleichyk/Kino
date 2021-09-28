import "package:flutter/material.dart";
import 'package:kino/app.dart';

import 'di/di.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Flutter Demo",
        theme: getDefaultThemeData(),
        home: TestPage(),
      );
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: Center(child: Text("Hello world")));
}
