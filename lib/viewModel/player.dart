import 'dart:convert';

import 'package:jinro_soup/globals.dart';
import 'package:jinro_soup/model/player.dart';
import 'package:jinro_soup/state/player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_notifier/state_notifier.dart';

class PlayerViewModel extends StateNotifier<PlayerState> {
  PlayerViewModel() : super(const PlayerState()) {
    initPlayerList();
  }

  int _id = 1;

  Future<void> initPlayerList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    var result = prefs.getStringList('playerList');

    if (result != null) {
      final newList =
          result.map((f) => Player.fromJson(json.decode(f))).toList();
      state = state.copyWith(playerList: newList);

      _id = state.playerList.length + 1;
    } else {
      for (var i = 0; i < MINIMUM_NUMBER_OF_PEOPLE; i++) {
        createPlayer();
      }
    }
  }

  void createPlayer() {
    final id = _id;
    final name = 'プレイヤー$_id';
    final isWolf = false;
    final newList = [...state.playerList, Player(id, name, isWolf)];
    state = state.copyWith(playerList: newList);

    _id++;

    updateSharedPreferences();
  }

  void updatePlayer(int id, String name, bool isWolf) {
    final newList = state.playerList
        .map((player) => player.id == id ? Player(id, name, isWolf) : player)
        .toList();
    state = state.copyWith(playerList: newList);

    updateSharedPreferences();
  }

  void deletePlayer(int id) {
    final newList =
        state.playerList.where((player) => player.id != id).toList();
    state = state.copyWith(playerList: newList);

    updateSharedPreferences();
  }

  void resetPlayer() {
    final newList = state.playerList.where((player) => player.id == 0).toList();
    state = state.copyWith(playerList: newList);

    _id = 1;

    for (var i = 0; i < MINIMUM_NUMBER_OF_PEOPLE; i++) {
      createPlayer();
    }

    updateSharedPreferences();
  }

  int getPlayerCount() {
    int count = state.playerList.length;

    return count;
  }

  Future<void> updateSharedPreferences() async {
    List<String> playerList =
        state.playerList.map((f) => json.encode(f.toJson())).toList();

    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList('playerList', playerList);
  }
}
