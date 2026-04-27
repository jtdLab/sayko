part of '../welcome.dart';

class WelcomeSkipButton extends HookWidget {
  const WelcomeSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.welcome;

    final userData = context.read<UserDataRepository>();
    return FButton(
      variant: .ghost,
      onPress: () {
        userData.update(displayName: null, onboardingStep: 1);
        context.pushOnboardingNextFromWelcome();
      },
      child: Text(i18n.skipButton.text),
    );
  }
}
