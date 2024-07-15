import 'package:flutter/material.dart';
import 'package:ngojek/launcher/launcher_view.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NgojekYuk",
      theme: ThemeData(
        fontFamily: 'NeoSans',
      ),
      home: new LauncherPage(),
    );
  }
}
