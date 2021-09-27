import "package:flutter/material.dart";
import 'package:kino/core/data/client/accountClient/account_client.dart';
import 'package:kino/core/data/models/account/account_details.dart';
import 'package:kino/framework/extensions/image_extensions.dart';
import 'package:kino/framework/res/images.dart';

import 'di/di.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getImage(ImagesAssets.APP_LOGO)
    );
  }
}
