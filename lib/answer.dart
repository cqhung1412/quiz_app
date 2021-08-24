import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final VoidCallback _selectHandler;

  Answer(this._answerText, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          onPrimary: Colors.white,
        ),
        child: Text(_answerText),
        onPressed: _selectHandler,
      ),
    );
  }
}
