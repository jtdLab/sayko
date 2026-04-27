// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paywall.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// PaywallState
// ########################################################

mixin _$PaywallState {
  PaywallPlan get plan;

  _PaywallStateCopyWith get copyWith => _PaywallStateCopyWith(this);
}

class _PaywallStateCopyWith {
  _PaywallStateCopyWith(this._v);

  final _$PaywallState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  PaywallState call({Object? plan = _unset}) {
    return PaywallState(plan: _pick<PaywallPlan>(plan, _v.plan));
  }
}

class _PaywallState with _$PaywallState implements PaywallState {
  const _PaywallState({required this.plan});

  @override
  final PaywallPlan plan;

  @override
  String toString() => 'PaywallState(plan: $plan)';
}
