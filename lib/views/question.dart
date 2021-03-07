import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jinro_soup/main.dart';

class QuestionView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: _displayMaster(context),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: _displayQuestion(),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('答えを見る'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(140, 40)),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayMaster(BuildContext context) {
    final String _masterName = ModalRoute.of(context).settings.arguments;

    return Column(
      children: <Widget>[
        Text('今回のマスターは'),
        Text(
          _masterName,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('さんです'),
      ],
    );
  }

  Widget _displayQuestion() {
    final questionState = useProvider(questionViewModelProvider.state);
    final _questionList = questionState.questionList;

    return Column(
      children: <Widget>[
        Text(
          _questionList[0].question,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
