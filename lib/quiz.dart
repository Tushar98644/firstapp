import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questionlist;
  final int question;
  final Function onpress;

  quiz(
      {required this.questionlist,
      required this.onpress,
      required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Questionarre(
          questionlist[question]['questiontext'].toString(),
        ),
        ...(questionlist[question]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => onpress(answer['score']), answer['text'].toString());
        }).toList()
      ],
    ));
  }
}
