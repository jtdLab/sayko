part of '../safety_check.dart';

@lockd
abstract class SafetyCheckState with _$SafetyCheckState {
  const factory SafetyCheckState({required Map<int, bool> answers}) =
      _SafetyCheckState;
}
