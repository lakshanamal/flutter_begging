import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScoure;
  final Function resetQuiz;
  @override
  Result(this.resultScoure, this.resetQuiz);

  String get resultPhrease {
    String textPrease = "you are good";
    if (resultScoure < 20)
      textPrease = "Your Awesome";
    else if (resultScoure < 30)
      textPrease = "You likely awesome";
    else if (resultScoure < 50) textPrease = "You are bad";
    return textPrease;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrease,
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        FlatButton(onPressed: resetQuiz, child: Text('Restart button'))
      ]),
    );
  }
}
