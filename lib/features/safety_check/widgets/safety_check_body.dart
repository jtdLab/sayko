part of '../safety_check.dart';

class SafetyCheckBody extends HookWidget {
  const SafetyCheckBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
      children: [
        const SafetyCheckHeader(),
        const SaykoGap.three(),
        for (var id = 1; id <= safetyCheckQuestionCount; id++) ...[
          SafetyCheckQuestionCard(id: id),
          const SaykoGap.one(),
        ],
      ],
    );
  }
}
