part of '../assessment.dart';

class AssessmentQuestionWidget extends HookWidget {
  const AssessmentQuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AssessmentCubit>();
    final i18n = context.i18n.features.assessment.header;

    final (idx,) = useBlocSelector(
      cubit,
      (AssessmentState state) => (state.index,),
    );
    final q = assessmentQuestions[idx];
    final axisLabel = switch (q.axis) {
      AssessmentAxis.stress => i18n.axisStress,
      AssessmentAxis.sleep => i18n.axisSleep,
      AssessmentAxis.self => i18n.axisSelf,
      AssessmentAxis.focus => i18n.axisFocus,
      AssessmentAxis.relations => i18n.axisRelations,
      AssessmentAxis.body => i18n.axisBody,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SaykoEyebrow(axisLabel),
        const SaykoGap.oneAndHalf(),
        SaykoSerifText('“${q.text}”', size: 28, height: 1.25),
      ],
    );
  }
}
