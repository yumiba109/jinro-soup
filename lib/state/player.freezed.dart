// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlayerStateTearOff {
  const _$PlayerStateTearOff();

// ignore: unused_element
  _PlayerState call({List<Player> playerList = const <Player>[]}) {
    return _PlayerState(
      playerList: playerList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlayerState = _$PlayerStateTearOff();

/// @nodoc
mixin _$PlayerState {
  List<Player> get playerList;

  @JsonKey(ignore: true)
  $PlayerStateCopyWith<PlayerState> get copyWith;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res>;
  $Res call({List<Player> playerList});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res> implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  final PlayerState _value;
  // ignore: unused_field
  final $Res Function(PlayerState) _then;

  @override
  $Res call({
    Object playerList = freezed,
  }) {
    return _then(_value.copyWith(
      playerList: playerList == freezed
          ? _value.playerList
          : playerList as List<Player>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerStateCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$PlayerStateCopyWith(
          _PlayerState value, $Res Function(_PlayerState) then) =
      __$PlayerStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Player> playerList});
}

/// @nodoc
class __$PlayerStateCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerStateCopyWith<$Res> {
  __$PlayerStateCopyWithImpl(
      _PlayerState _value, $Res Function(_PlayerState) _then)
      : super(_value, (v) => _then(v as _PlayerState));

  @override
  _PlayerState get _value => super._value as _PlayerState;

  @override
  $Res call({
    Object playerList = freezed,
  }) {
    return _then(_PlayerState(
      playerList: playerList == freezed
          ? _value.playerList
          : playerList as List<Player>,
    ));
  }
}

/// @nodoc
class _$_PlayerState with DiagnosticableTreeMixin implements _PlayerState {
  const _$_PlayerState({this.playerList = const <Player>[]})
      : assert(playerList != null);

  @JsonKey(defaultValue: const <Player>[])
  @override
  final List<Player> playerList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerState(playerList: $playerList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerState'))
      ..add(DiagnosticsProperty('playerList', playerList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerState &&
            (identical(other.playerList, playerList) ||
                const DeepCollectionEquality()
                    .equals(other.playerList, playerList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playerList);

  @JsonKey(ignore: true)
  @override
  _$PlayerStateCopyWith<_PlayerState> get copyWith =>
      __$PlayerStateCopyWithImpl<_PlayerState>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState({List<Player> playerList}) = _$_PlayerState;

  @override
  List<Player> get playerList;
  @override
  @JsonKey(ignore: true)
  _$PlayerStateCopyWith<_PlayerState> get copyWith;
}
