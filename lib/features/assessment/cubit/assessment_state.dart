part of '../assessment.dart';

@lockd
abstract class AssessmentState with _$AssessmentState {
  const factory AssessmentState({
    required int index,
    required Map<int, int> answers,
  }) = _AssessmentState;
}
