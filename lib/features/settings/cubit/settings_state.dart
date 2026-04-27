part of '../settings.dart';

@lockd
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({required Appearance appearance}) =
      _SettingsState;
}
