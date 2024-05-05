import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    final questionText =
        question['questionText'] as String; // Explicit type casting

    final answers = question['answers'] as List<Map<String, Object>>;

    return Column(
      children: [
        Question(questionText),
        ...answers.map((answer) {
          final answerText = answer['text'] as String; // Explicit type casting
          final score = answer['score'] as int; // Explicit type casting

          return Answer(() => answerQuestion(score), answerText);
        }).toList(),
      ],
    );
  }
}
