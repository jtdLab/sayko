// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// PlayerState
// ########################################################

mixin _$PlayerState {
  bool get playing;

  int get seconds;

  int get total;

  _PlayerStateCopyWith get copyWith => _PlayerStateCopyWith(this);
}

class _PlayerStateCopyWith {
  _PlayerStateCopyWith(this._v);

  final _$PlayerState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  PlayerState call({
    Object? playing = _unset,
    Object? seconds = _unset,
    Object? total = _unset,
  }) {
    return PlayerState(
      playing: _pick<bool>(playing, _v.playing),
      seconds: _pick<int>(seconds, _v.seconds),
      total: _pick<int>(total, _v.total),
    );
  }
}

class _PlayerState with _$PlayerState implements PlayerState {
  const _PlayerState({
    required this.playing,
    required this.seconds,
    required this.total,
  });

  @override
  final bool playing;

  @override
  final int seconds;

  @override
  final int total;

  @override
  String toString() =>
      'PlayerState(playing: $playing, seconds: $seconds, total: $total)';
}
