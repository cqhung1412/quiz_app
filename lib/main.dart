import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  static const questions = [
    {
      'questionText': 'Món bún yêu thích của bạn là gì?',
      'answers': [
        {'text': 'Bún đậu mắm tôm', 'score': 1},
        {'text': 'Bún bò huế', 'score': 5},
        {'text': 'Bún mắm', 'score': 10},
      ]
    },
    {
      'questionText': 'Thịt yêu thích của bạn là gì?',
      'answers': [
        {'text': 'Thịt heo', 'score': 1},
        {'text': 'Thịt bò', 'score': 3},
        {'text': 'Thịt gà', 'score': 7},
        {'text': 'Thịt dê', 'score': 10},
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
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
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
