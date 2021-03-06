import 'package:flutter/material.dart';

@immutable
class Player {
  const Player(this.id, this.name, this.isWolf);
  final int id;
  final String name;
  final bool isWolf;

  Map toJson() => {
        'id': id,
        'name': name,
        'isWolf': isWolf,
      };

  Player.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        isWolf = json['isWolf'];
}
