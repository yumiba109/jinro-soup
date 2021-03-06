import 'package:flutter/material.dart';
import 'package:jinro_soup/main.dart';
import 'package:jinro_soup/model/player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputPlayerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context).settings.arguments as Player;
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Center(),
    );
  }
}
