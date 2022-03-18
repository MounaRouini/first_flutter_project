import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  final VoidCallback fun;
  final String answer;
  Answer(this.fun, this.answer);
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: fun,
        child: Text(answer),
        color: Colors.blue,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
