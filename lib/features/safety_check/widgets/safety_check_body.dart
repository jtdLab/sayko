part of '../safety_check.dart';

class SafetyCheckBody extends HookWidget {
  const SafetyCheckBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.safetyCheck;
    final theme = context.theme;

    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        const SafetyCheckHeader(),
        const SaykoGap.three(),
        for (var id = 1; id <= safetyCheckQuestionCount; id++) ...[
          SafetyCheckQuestionCard(id: id),
          const SaykoGap.one(),
        ],
        const SaykoGap.two(),
        const SafetyCheckConfirmButton(),
        const SaykoGap.two(),
        Text(
          i18n.footer.text,
          textAlign: TextAlign.center,
          style: theme.typography.xs.copyWith(
            color: theme.colors.mutedForeground,
          ),
        ),
      ],
    );
  }
}
