import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jinro_soup/main.dart';
import 'package:jinro_soup/model/player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jinro_soup/views/input_player.dart';

class PlayerView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プレイヤー登録'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              child: const Text('プレイヤー追加'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(140, 40)),
              ),
              onPressed: () {
                _transitionToNextScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _transitionToNextScreen(BuildContext context,
      {Player player}) async {
    final result = await Navigator.pushNamed(
      context,
      Const.routeNameInputPlayer,
      arguments: player,
    );
  }
}
