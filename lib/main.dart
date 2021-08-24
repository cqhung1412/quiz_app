import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    'What\'s your most hated animal?',
    'What\'s your favorite animal meat?'
  ];

  void _answerQuestion() {
    setState(() {
      var newIndex = _questionIndex;
      if (_questionIndex < questions.length - 1) {
        newIndex = _questionIndex + 1;
      }
      // change state
      _questionIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fluttering"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text("Yes, I do"),
              onPressed: () => _answerQuestion(),
            ),
            ElevatedButton(
              child: Text("No, I don't"),
              onPressed: () => _answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
