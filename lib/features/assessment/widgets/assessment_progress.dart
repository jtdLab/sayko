part of '../assessment.dart';

class AssessmentProgress extends HookWidget {
  const AssessmentProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AssessmentCubit>();
    final theme = context.theme;
    final total = assessmentQuestions.length;

    final (idx, answered) = useBlocSelector(
      cubit,
      (AssessmentState state) =>
          (state.index, state.answers.containsKey(assessmentQuestions[state.index].id)),
    );
    final progress = (idx + (answered ? 1 : 0)) / total;

    return Row(
      children: [
        Expanded(child: FDeterminateProgress(value: progress)),
        const SaykoGap.one(),
        Text(
          '${idx + 1} / $total',
          style: theme.typography.xs.copyWith(
            color: theme.colors.mutedForeground,
          ),
        ),
      ],
    );
  }
}
