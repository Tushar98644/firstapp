import 'package:flutter/material.dart';
// import 'package:dynamic_color/dynamic_color.dart';

class Answer extends StatelessWidget {
  final VoidCallback set;
  final String answertext;
  Answer(this.set, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          // color: Colors.blue,
          child: Text(answertext),
          onPressed: set,
        ));
  }
}
