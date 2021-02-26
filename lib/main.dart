import 'package:flutter/material.dart';
import 'package:jinro_soup/viewModel/player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jinro_soup/views/top.dart';

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(),
    );
  }
}
