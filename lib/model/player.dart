import 'package:flutter/material.dart';

@immutable
class Player {
  const Player(this.id, this.name, this.isWolf);
  final int id;
  final String name;
  final bool isWolf;
}
