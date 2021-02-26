import 'package:jinro_soup/model/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'player.freezed.dart';

@freezed
abstract class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default(<Player>[]) List<Player> playerList,
  }) = _PlayerState;
}
