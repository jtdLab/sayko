part of '../assessment.dart';

AssessmentState _initialState() {
  return const AssessmentState(index: 0, answers: {});
}

class AssessmentCubit extends Cubit<AssessmentState> {
  AssessmentCubit() : super(_initialState());

  bool get isLast => state.index >= assessmentQuestions.length - 1;

  void answer(int value) {
    final q = assessmentQuestions[state.index];
    final next = Map<int, int>.from(state.answers)..[q.id] = value;
    emit(state.copyWith(answers: next));
  }

  void nextQuestion() {
    if (isLast) return;
    emit(state.copyWith(index: state.index + 1));
  }

  void previousQuestion() {
    if (state.index == 0) return;
    emit(state.copyWith(index: state.index - 1));
  }
}
