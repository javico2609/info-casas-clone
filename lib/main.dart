import 'package:flutter/material.dart';
import 'package:info_casas_clone/src/pages/pages.dart';
import 'package:info_casas_clone/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Casas Clone',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}