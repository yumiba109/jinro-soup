import 'package:flutter/material.dart';
import 'package:jinro_soup/main.dart';
import 'package:jinro_soup/model/player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputPlayerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: PlayerForm(),
    );
  }
}

class PlayerForm extends StatefulWidget {
  @override
  _PlayerFormState createState() => _PlayerFormState();
}

class _PlayerFormState extends State<PlayerForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    final player = ModalRoute.of(context).settings.arguments as Player;
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(64),
        child: Column(
          children: <Widget>[
            TextFormField(
              initialValue: player.name,
            ),
          ],
        ),
      ),
    );
  }
}
