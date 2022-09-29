import 'package:flutter/material.dart';
import 'package:login_page/home.dart';
import 'package:login_page/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: LightTheme().theme,
        home: const HomePage());
  }
}
