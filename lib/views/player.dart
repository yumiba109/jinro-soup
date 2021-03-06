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
            Container(
              height: 300,
              child: _buildList(),
            ),
            ElevatedButton(
              child: const Text('プレイヤー追加'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(140, 40)),
              ),
              onPressed: () {
                context.read(playerViewModelProvider).createPlayer();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList() {
    final playerState = useProvider(playerViewModelProvider.state);
    final _playerList = playerState.playerList;

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: _playerList.length,
      itemBuilder: (BuildContext context, int index) {
        return _playerItem(_playerList[index], context);
      },
    );
  }

  Widget _playerItem(Player player, BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              player.name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            InkWell(
              child: Icon(Icons.indeterminate_check_box_outlined),
              onTap: () {
                context.read(playerViewModelProvider).deletePlayer(player.id);
              },
            ),
          ],
        ),
      ),
      onTap: () {
        _transitionToNextScreen(context, player: player);
      },
    );
  }

  Future<void> _transitionToNextScreen(BuildContext context,
      {Player player}) async {
    Navigator.pushNamed(
      context,
      Const.routeNameInputPlayer,
      arguments: player,
    );
  }
}
