import 'package:demo_flutter_app/routes.dart';
import 'package:demo_flutter_app/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(primarySwatch: Colors.indigo, brightness: Brightness.light),
      initialRoute: Routes.login,
      onGenerateRoute: Routes.factory,
      debugShowCheckedModeBanner: false,
    );
  }
}
