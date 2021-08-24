import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function _selectHandler;

  Answer(this._answerText, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
        ),
        child: Text(_answerText),
        onPressed: _selectHandler,
      ),
    );
  }
}
