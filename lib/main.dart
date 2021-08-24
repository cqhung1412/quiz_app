import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    'What\'s your most hated animal?',
    'What\'s your favorite animal meat?'
  ];

  void answerQuestion() {
    setState(() {
      var newIndex = questionIndex;
      if (questionIndex < questions.length - 1) {
        newIndex = questionIndex + 1;
      }
      // change state
      questionIndex = newIndex;
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
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              child: Text("Yes, I do"),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Text("No, I don't"),
              onPressed: () => answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
