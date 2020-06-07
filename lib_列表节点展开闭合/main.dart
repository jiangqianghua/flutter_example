import 'package:flutter/material.dart';

import 'expansion_panel_list_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData.dark(),
      home: ExpansionPanelListDemo(),
    );
  }
}