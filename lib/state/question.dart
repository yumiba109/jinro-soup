import 'package:jinro_soup/model/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'question.freezed.dart';

@freezed
abstract class QuestionState with _$QuestionState {
  const factory QuestionState({
    @Default(<Question>[]) List<Question> questionList,
  }) = _QuestionState;
}
