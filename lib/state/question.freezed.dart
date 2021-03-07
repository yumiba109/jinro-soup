// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuestionStateTearOff {
  const _$QuestionStateTearOff();

// ignore: unused_element
  _QuestionState call({List<Question> questionList = const <Question>[]}) {
    return _QuestionState(
      questionList: questionList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuestionState = _$QuestionStateTearOff();

/// @nodoc
mixin _$QuestionState {
  List<Question> get questionList;

  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
  $Res call({List<Question> questionList});
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;

  @override
  $Res call({
    Object questionList = freezed,
  }) {
    return _then(_value.copyWith(
      questionList: questionList == freezed
          ? _value.questionList
          : questionList as List<Question>,
    ));
  }
}

/// @nodoc
abstract class _$QuestionStateCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$QuestionStateCopyWith(
          _QuestionState value, $Res Function(_QuestionState) then) =
      __$QuestionStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Question> questionList});
}

/// @nodoc
class __$QuestionStateCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$QuestionStateCopyWith<$Res> {
  __$QuestionStateCopyWithImpl(
      _QuestionState _value, $Res Function(_QuestionState) _then)
      : super(_value, (v) => _then(v as _QuestionState));

  @override
  _QuestionState get _value => super._value as _QuestionState;

  @override
  $Res call({
    Object questionList = freezed,
  }) {
    return _then(_QuestionState(
      questionList: questionList == freezed
          ? _value.questionList
          : questionList as List<Question>,
    ));
  }
}

/// @nodoc
class _$_QuestionState with DiagnosticableTreeMixin implements _QuestionState {
  const _$_QuestionState({this.questionList = const <Question>[]})
      : assert(questionList != null);

  @JsonKey(defaultValue: const <Question>[])
  @override
  final List<Question> questionList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionState(questionList: $questionList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionState'))
      ..add(DiagnosticsProperty('questionList', questionList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionState &&
            (identical(other.questionList, questionList) ||
                const DeepCollectionEquality()
                    .equals(other.questionList, questionList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(questionList);

  @JsonKey(ignore: true)
  @override
  _$QuestionStateCopyWith<_QuestionState> get copyWith =>
      __$QuestionStateCopyWithImpl<_QuestionState>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  const factory _QuestionState({List<Question> questionList}) =
      _$_QuestionState;

  @override
  List<Question> get questionList;
  @override
  @JsonKey(ignore: true)
  _$QuestionStateCopyWith<_QuestionState> get copyWith;
}
