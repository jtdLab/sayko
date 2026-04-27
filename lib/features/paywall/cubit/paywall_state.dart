part of '../paywall.dart';

@lockd
abstract class PaywallState with _$PaywallState {
  const factory PaywallState({required PaywallPlan plan}) = _PaywallState;
}
