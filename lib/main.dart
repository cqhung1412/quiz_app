import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fluttering"),
        ),
        body: Text("ThisIsMyFirstFlutter"),
      ),
    );
  }
}