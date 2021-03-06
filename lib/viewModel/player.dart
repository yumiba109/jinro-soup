import 'package:jinro_soup/model/player.dart';
import 'package:jinro_soup/state/player.dart';
import 'package:state_notifier/state_notifier.dart';

class PlayerViewModel extends StateNotifier<PlayerState> {
  PlayerViewModel() : super(const PlayerState());
  int _id = 1;

  void createPlayer() {
    final id = _id;
    final name = 'プレイヤー$_id';
    final isWolf = false;
    final newList = [...state.playerList, Player(id, name, isWolf)];
    state = state.copyWith(playerList: newList);

    _id++;
  }

  void updatePlayer(int id, String name, bool isWolf) {
    final newList = state.playerList
        .map((player) => player.id == id ? Player(id, name, isWolf) : player)
        .toList();
    state = state.copyWith(playerList: newList);
  }

  void deletePlayer(int id) {
    final newList =
        state.playerList.where((player) => player.id != id).toList();
    state = state.copyWith(playerList: newList);
  }

  void resetPlayer() {
    final newList = state.playerList.where((player) => player.id == 0).toList();
    state = state.copyWith(playerList: newList);

    _id = 1;
  }
}
