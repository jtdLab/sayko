part of '../results.dart';

class ResultsContinueButton extends HookWidget {
  const ResultsContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.results;
    final userData = context.read<UserDataRepository>();
    return FButton(
      onPress: () {
        userData.update(displayName: null, onboardingStep: onboardingLastStep);
      },
      child: Text(i18n.continueButton.text),
    );
  }
}
