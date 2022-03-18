import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalscore;
  final VoidCallback restart;
  Result(this.totalscore, this.restart);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Your score is $totalscore",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restart,
            child: Text("restart the quiz", style: TextStyle(color: Colors.blue,)),
          )
        ],
      ),
    );
  }
}
