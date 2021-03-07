import 'package:flutter/material.dart';
import 'package:jinro_soup/views/answer.dart';
import 'package:jinro_soup/views/input_player.dart';
import 'package:jinro_soup/views/question.dart';
import 'package:jinro_soup/views/top.dart';

import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => TopView());
      case Const.routeNameInputPlayer:
        return MaterialPageRoute(
          settings: RouteSettings(
            arguments: settings.arguments,
          ),
          builder: (context) => InputPlayerView(),
          fullscreenDialog: true,
        );
      case Const.routeNameQuestion:
        return MaterialPageRoute(
          settings: RouteSettings(
            arguments: settings.arguments,
          ),
          builder: (context) => QuestionView(),
        );
      case Const.routeNameAnswer:
        return MaterialPageRoute(
          settings: RouteSettings(
            arguments: settings.arguments,
          ),
          builder: (context) => AnswerView(),
          fullscreenDialog: true,
        );
    }
  }
}
