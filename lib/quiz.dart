import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final i;
  Quiz(@required this.answerQuestion, @required this.questions,
      @required this.i);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[i]['textquestion'] as String),
        ...(questions[i]['answers'] as List<Map<String, Object>>).map((val) {
          return Answer(
              () => answerQuestion(val['score']), val['text'] as String);
        }).toList()
      ],
    );
  }
}
