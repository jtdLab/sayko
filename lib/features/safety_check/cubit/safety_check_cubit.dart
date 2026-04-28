part of '../safety_check.dart';

const safetyCheckQuestionCount = 2;
const _criticalIds = {1, 2};

SafetyCheckState _initialState() {
  return const SafetyCheckState(answers: {});
}

class SafetyCheckCubit extends Cubit<SafetyCheckState> {
  SafetyCheckCubit() : super(_initialState());

  bool get allAnswered => state.answers.length == safetyCheckQuestionCount;

  bool get blocked =>
      _criticalIds.any((id) => state.answers[id] == true);

  void answer(int id, bool value) {
    final next = Map<int, bool>.from(state.answers)..[id] = value;
    emit(state.copyWith(answers: next));
  }
}
