part of '../safety_check.dart';

class SafetyCheckQuestionCard extends HookWidget {
  const SafetyCheckQuestionCard({required this.id, super.key});

  final int id;

  String _text(BuildContext context) {
    final q = context.i18n.features.safetyCheck;
    return switch (id) {
      1 => q.question1.text,
      2 => q.question2.text,
      3 => q.question3.text,
      4 => q.question4.text,
      _ => q.question5.text,
    };
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SafetyCheckCubit>();
    final i18n = context.i18n.features.safetyCheck;
    final theme = context.theme;

    final (selected,) = useBlocSelector(
      cubit,
      (SafetyCheckState state) => (state.answers[id],),
    );

    return FCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_text(context), style: theme.typography.sm),
            const SaykoGap.oneAndHalf(),
            Row(
              children: [
                Expanded(
                  child: FButton(
                    variant: selected == false ? .primary : .outline,
                    onPress: () => cubit.answer(id, false),
                    child: Text(i18n.noButton.text),
                  ),
                ),
                const SaykoGap.one(),
                Expanded(
                  child: FButton(
                    variant: selected == true ? .primary : .outline,
                    onPress: () => cubit.answer(id, true),
                    child: Text(i18n.yesButton.text),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
