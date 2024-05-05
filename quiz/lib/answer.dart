import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // Changed from RaisedButton to ElevatedButton
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 56, 160, 234), // Text color
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
