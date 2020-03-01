import 'package:flutter/material.dart';
import 'pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则底部导航',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: FirstPage()
    );
  }
}