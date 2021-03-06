import 'package:flutter/material.dart';
import 'package:jinro_soup/views/input_player.dart';
import 'package:jinro_soup/views/top.dart';

import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => TopView());
      case Const.routeNameInputPlayer:
        return MaterialPageRoute(
          builder: (context) => InputPlayerView(),
          fullscreenDialog: true,
        );
    }
  }
}
