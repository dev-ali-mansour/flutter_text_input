import 'package:flutter/material.dart';
import 'package:flutter_text_input/ui/homeContent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'User Input',
      home: new _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        title: new Text(
          'User Text Input',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: new HomeContent(),
    );
  }
}
