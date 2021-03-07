import 'package:flutter/material.dart';

@immutable
class Question {
  const Question(this.question, this.answer);
  final String question;
  final String answer;
}
