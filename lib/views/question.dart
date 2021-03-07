import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class QuestionView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: _displayMaster(context),
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
}
