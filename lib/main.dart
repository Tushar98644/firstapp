import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(Firstapp());
}

class Firstapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstappState();
  }
}

class FirstappState extends State<Firstapp> {
  var questionlist = [
    {
      'questiontext': 'what\'s the capital of domincia?',
      'answers': [
        {'text': 'Roseau', 'score': 1},
        {'text': 'vatican city', 'score': 0},
        {'text': 'Nassau', 'score': 0},
        {'text': 'castries', 'score': 0},
      ]
    },
    {
      'questiontext': 'The country that has the highest in Barley Production?',
      'answers': [
        {'text': 'china', 'score': 0},
        {'text': 'france', 'score': 0},
        {'text': 'India', 'score': 0},
        {'text': 'russia', 'score': 1},
      ]
    },
    {
      'questiontext':
          'Where was the electricity supply first introduced in India ?',
      'answers': [
        {'text': 'mumbai', 'score': 0},
        {'text': 'chennai', 'score': 0},
        {'text': 'dehradun', 'score': 0},
        {'text': 'darjeeling', 'score': 1},
      ]
    },
    {
      'questiontext':
          '  Which Veda depicts the information about the most ancient Vedic age culture?',
      'answers': [
        {'text': 'rig veda', 'score': 1},
        {'text': 'Yajurveda', 'score': 0},
        {'text': 'Samaveda', 'score': 0},
        {'text': 'Atharvaveda', 'score': 1},
      ]
    },
    {
      'questiontext': ' National Income estimates in India are prepared by?',
      'answers': [
        {'text': ' Planning Commission', 'score': 0},
        {'text': 'Central statistical organization', 'score': 1},
        {'text': ' Reserve Bank of India', 'score': 0},
        {'text': 'Indian statistical Institute', 'score': 1},
      ]
    },
  ];

  var question = 0;
  var totalscore = 0;

  void reset() {
    setState(() {
      question = 0;
      totalscore = 0;
    });
  }

  void onpress(int score) {
    totalscore = totalscore + score;
    setState(() {
      question = question + 1;
    });
    print(question);
    if (question < questionlist.length) {
      print('we have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // questionlist[];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('first app')),
          body: question < questionlist.length
              ? quiz(
                  questionlist: questionlist,
                  onpress: onpress,
                  question: question,
                )
              : result(totalscore, reset)),
    );
  }

  // column(children) {}
}
