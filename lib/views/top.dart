import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '人狼のスープ',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              child: const Text('ゲームを始める'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(140, 40)),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 2),
            ElevatedButton(
              child: const Text('遊び方'),
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
}
