part of '../player.dart';

@lockd
abstract class PlayerState with _$PlayerState {
  const factory PlayerState({
    required bool playing,
    required int seconds,
    required int total,
  }) = _PlayerState;
}
