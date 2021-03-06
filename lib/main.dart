import 'package:flutter/material.dart';
import 'package:jinro_soup/route_generator.dart';
import 'package:jinro_soup/viewModel/player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final playerViewModelProvider = StateNotifierProvider(
  (ref) => PlayerViewModel(),
);

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class Const {
  static const routeNameInputPlayer = '/input-player';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
