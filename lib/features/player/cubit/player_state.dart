part of '../player.dart';

@lockd
abstract class PlayerState with _$PlayerState {
  const factory PlayerState({
    required bool playing,
    required int seconds,
    required int total,
    required String title,
    required String subtitle,
    required String? coverImageUrl,
    required String toneKey,
  }) = _PlayerState;
}
