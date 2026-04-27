part of '../welcome.dart';

class WelcomeContinueButton extends HookWidget {
  const WelcomeContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WelcomeCubit>();
    final userData = context.read<UserDataRepository>();
    final i18n = context.i18n.features.welcome;

    final (slide,) = useBlocSelector(
      cubit,
      (WelcomeState state) => (state.slideIndex,),
    );
    final isLast = slide >= 2;

    return FButton(
      onPress: () {
        if (isLast) {
          userData.update(displayName: null, onboardingStep: 1);
          context.pushOnboardingNextFromWelcome();
        } else {
          cubit.next();
        }
      },
      child: Text(isLast ? i18n.beginButton.text : i18n.continueButton.text),
    );
  }
}
