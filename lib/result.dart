import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'U là trùi! ';
    if (resultScore <= 5) {
      resultText += 'Toẹt dời :3';
    } else if (resultScore <= 10) {
      resultText += 'Lạ he :/';
    } else {
      resultText += 'Kì dị @@';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.green,
              side: BorderSide(color: Colors.green),
            ),
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
