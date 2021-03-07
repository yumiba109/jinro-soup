import 'package:flutter/material.dart';
import 'package:jinro_soup/model/question.dart';

class AnswerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('答え'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: _displayAnswer(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _displayAnswer(BuildContext context) {
    final question = ModalRoute.of(context).settings.arguments as Question;

    return Column(
      children: <Widget>[
        Text(
          question.answer,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
