part of '../app.dart';

@lockd
abstract class AppState with _$AppState {
  const factory AppState({
    required AppStatus status,
    required Appearance appearance,
  }) = _AppState;
}
