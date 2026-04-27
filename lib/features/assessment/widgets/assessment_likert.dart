part of '../assessment.dart';

class AssessmentLikert extends HookWidget {
  const AssessmentLikert({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AssessmentCubit>();
    final i18n = context.i18n.features.assessment.likert;
    final theme = context.theme;

    final (idx, answer) = useBlocSelector(
      cubit,
      (AssessmentState state) => (
        state.index,
        state.answers[assessmentQuestions[state.index].id],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var n = 1; n <= 5; n++) _Dot(value: n, selected: answer == n, onTap: () {
              cubit.answer(n);
              Future.delayed(const Duration(milliseconds: 280), () {
                if (cubit.isLast) {
                  context.pushResults();
                } else {
                  cubit.nextQuestion();
                }
              });
            }),
          ],
        ),
        const SaykoGap.two(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(i18n.disagree, style: theme.typography.xs.copyWith(color: theme.colors.mutedForeground)),
            Text(i18n.agree, style: theme.typography.xs.copyWith(color: theme.colors.mutedForeground)),
          ],
        ),
        const SaykoGap.two(),
        Center(
          child: Text(
            answer == null ? i18n.hint : _label(i18n, answer),
            style: theme.typography.sm.copyWith(color: theme.colors.mutedForeground),
          ),
        ),
        Text('idx: $idx', style: const TextStyle(fontSize: 0)),
      ],
    );
  }

  String _label(dynamic i18n, int n) {
    return switch (n) {
      1 => i18n.stronglyDisagree as String,
      2 => i18n.disagree as String,
      3 => i18n.neutral as String,
      4 => i18n.agree as String,
      _ => i18n.stronglyAgree as String,
    };
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.value, required this.selected, required this.onTap});
  final int value;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.colors;
    final size = [38.0, 32.0, 28.0, 32.0, 38.0][value - 1];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected ? colors.primary : const Color(0x00000000),
          border: Border.all(
            color: selected ? colors.primary : colors.border,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
