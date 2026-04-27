part of '../assessment.dart';

class AssessmentSkipButton extends HookWidget {
  const AssessmentSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.assessment.skipButton;
    final userData = context.read<UserDataRepository>();

    return FButton(
      variant: .ghost,
      onPress: () {
        userData.update(displayName: null, onboardingStep: onboardingLastStep);
        context.pushResults();
      },
      child: Text(i18n.text),
    );
  }
}
