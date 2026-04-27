// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_check.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// SafetyCheckState
// ########################################################

mixin _$SafetyCheckState {
  Map<int, bool> get answers;

  _SafetyCheckStateCopyWith get copyWith => _SafetyCheckStateCopyWith(this);
}

class _SafetyCheckStateCopyWith {
  _SafetyCheckStateCopyWith(this._v);

  final _$SafetyCheckState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  SafetyCheckState call({Object? answers = _unset}) {
    return SafetyCheckState(
      answers: _pick<Map<int, bool>>(answers, _v.answers),
    );
  }
}

class _SafetyCheckState with _$SafetyCheckState implements SafetyCheckState {
  const _SafetyCheckState({required this.answers});

  @override
  final Map<int, bool> answers;

  @override
  String toString() => 'SafetyCheckState(answers: $answers)';
}
