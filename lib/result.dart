import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class result extends StatelessWidget {
  final int resultscore;
  final VoidCallback reset;

  result(this.resultscore, this.reset);

  String get resultphrase {
    String resulttext;
    if (resultscore == 5) {
      resulttext = 'brilliant';
    } else if (resultscore == 4) {
      resulttext = 'awesome';
    } else if (resultscore == 3) {
      resulttext = 'good job';
    } else {
      resulttext = 'better  luck next time';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultphrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart quiz!'),
          onPressed: reset,
        ),
      ]),
    );
  }
}
