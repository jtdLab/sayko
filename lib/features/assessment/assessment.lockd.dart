// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// AssessmentState
// ########################################################

mixin _$AssessmentState {
  int get index;

  Map<int, int> get answers;

  _AssessmentStateCopyWith get copyWith => _AssessmentStateCopyWith(this);
}

class _AssessmentStateCopyWith {
  _AssessmentStateCopyWith(this._v);

  final _$AssessmentState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  AssessmentState call({Object? index = _unset, Object? answers = _unset}) {
    return AssessmentState(
      index: _pick<int>(index, _v.index),
      answers: _pick<Map<int, int>>(answers, _v.answers),
    );
  }
}

class _AssessmentState with _$AssessmentState implements AssessmentState {
  const _AssessmentState({required this.index, required this.answers});

  @override
  final int index;

  @override
  final Map<int, int> answers;

  @override
  String toString() => 'AssessmentState(index: $index, answers: $answers)';
}
