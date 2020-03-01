import 'package:flutter/material.dart';
import 'forsted_class_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fultter 毛玻璃效果',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FrostedClassDemo(),
      )
    );
  }
}