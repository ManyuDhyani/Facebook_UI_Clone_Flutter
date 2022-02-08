import 'package:facebook_ui_clone_flutter/widgets/mainNav.dart';
import 'package:facebook_ui_clone_flutter/widgets/palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Palette.navColor,
      ),
      debugShowCheckedModeBanner: false,
      home: NavMain(),
    );
  }
}
