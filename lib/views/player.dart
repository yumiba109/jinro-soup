import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jinro_soup/globals.dart';
import 'package:jinro_soup/main.dart';
import 'package:jinro_soup/model/player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
              child: _playerCount(context),
            ),
            Container(
              height: 350,
              child: _buildList(),
            ),
            ElevatedButton(
              child: const Text('プレイヤー追加'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(140, 40)),
              ),
              onPressed:
                  context.read(playerViewModelProvider).getPlayerCount() >=
                          MAX_NUMBER_OF_PEOPLE
                      ? null
                      : () {
                          context.read(playerViewModelProvider).createPlayer();
                        },
            ),
            ElevatedButton(
              child: const Text('リセット'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(140, 40)),
              ),
              onPressed: () {
                context.read(playerViewModelProvider).resetPlayer();
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('次へ進む'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(180, 40)),
              ),
              onPressed: () {
                String _masterName =
                    context.read(playerViewModelProvider).decidePlayerRole();
                Navigator.pushNamed(
                  context,
                  Const.routeNameQuestion,
                  arguments: _masterName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _playerCount(BuildContext context) {
    int _count = context.read(playerViewModelProvider).getPlayerCount();

    return Text(
      'プレイヤー数：$_count',
      style: TextStyle(
        fontSize: 16,
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
    int _count = context.read(playerViewModelProvider).getPlayerCount();

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
            if (_count > MINIMUM_NUMBER_OF_PEOPLE)
              InkWell(
                child: Icon(Icons.indeterminate_check_box_outlined),
                onTap: () {
                  context
                      .read(playerViewModelProvider)
                      .deletePlayer(player.id, true);
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
