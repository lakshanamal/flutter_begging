import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Qiuz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQiz;
  final questionIndex;

  Qiuz(this.question, this.answerQiz, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQiz(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
