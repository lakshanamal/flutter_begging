import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTest;

  Question(this.questionTest);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(45),
      child: Text(
        questionTest,
        style: TextStyle(fontSize: 42),
        textAlign: TextAlign.center,
      ),
    );
  }
}
