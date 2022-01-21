import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionSet;
  final VoidCallback answerQuestion;
  final int questionIndex;

  Quiz(this.questionSet, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionSet[questionIndex]['questionText'] as String,
        ), // or questionSet.elementAt(index).
        ...(questionSet[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answerQuestion, answer['text'] as String);
        }).toList()
      ],
    );
  }
}
