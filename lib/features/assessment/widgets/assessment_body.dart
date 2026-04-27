part of '../assessment.dart';

class AssessmentBody extends HookWidget {
  const AssessmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.assessment;
    final theme = context.theme;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SaykoGap.three(),
          const AssessmentProgress(),
          const Spacer(),
          const AssessmentQuestionWidget(),
          const SaykoGap.four(),
          const AssessmentLikert(),
          const Spacer(),
          Text(
            i18n.footer.text,
            textAlign: TextAlign.center,
            style: theme.typography.xs.copyWith(
              color: theme.colors.mutedForeground,
            ),
          ),
        ],
      ),
    );
  }
}
