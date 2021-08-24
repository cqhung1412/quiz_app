import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    {
      'questionText': 'Món bún yêu thích của bạn là gì?',
      'answers': ['Bún đậu mắm tôm', 'Bún bò huế', 'Bún mắm']
    },
    {
      'questionText': 'Thịt yêu thích của bạn là gì?',
      'answers': ['Thịt heo', 'Thịt gà', 'Thịt bò', 'Thịt dê']
    },
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
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Fluttering"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((ans) => Answer(ans, _answerQuestion))
                .toList()
          ],
        ),
      ),
    );
  }
}
