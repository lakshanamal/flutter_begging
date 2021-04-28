import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': "what is your name ?",
        'answer': [
          {'text': 'amal', 'score': 21},
          {'text': 'lakshan', 'score': 10},
          {'text': 'kavi', 'score': 5},
          {'text': 'ishan', 'score': 45}
        ]
      },
      {
        'questionText': "What is your age ?",
        'answer': [
          {'text': '12', 'score': 2},
          {'text': '56', 'score': 5},
          {'text': '23', 'score': 8},
          {'text': '15', 'score': 23}
        ]
      },
      {
        'questionText': "What is your city ?",
        'answer': [
          {'text': 'galle', 'score': 7},
          {'text': 'hikkduwa', 'score': 13},
          {'text': 'matara', 'score': 25},
          {'text': 'horana', 'score': 31}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < question.length
            ? Qiuz(
                question,
                _answerQuestion,
                _questionIndex,
              )
            : Result(totalScore,_resetQuiz),
      ),
    );
    // hello
  }
}
