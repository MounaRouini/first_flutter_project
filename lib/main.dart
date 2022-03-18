import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var i = 0;
  var totalscore = 0;
  void restart() {
    setState(() {
      totalscore = 0;
      i = 0;
    });
  }

  void answerQuestion(int score) {
    print(i);
    totalscore += score;
    setState(() {
      i = i + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'textquestion': 'Quelle est la couleur du ciel? ',
        'answers': [
          {'text': 'rouge', 'score': 0},
          {'text': 'bleu', 'score': 1},
          {'text': 'jaune', 'score': 0},
        ],
      },
      {
        'textquestion': '1+1? ',
        'answers': [
          {'text': '1', 'score': 0},
          {'text': '0', 'score': 0},
          {'text': '2', 'score': 1},
        ],
      },
      {
        'textquestion': 'le maj de m ',
        'answers': [
          {'text': 'M', 'score': 1},
          {'text': 'G', 'score': 0},
          {'text': 'A', 'score': 0},
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('my app guys'),
      ),
      body: i < questions.length
          ? Quiz(answerQuestion, questions, i)
          : Result(totalscore, restart),
    ));
  }
}
