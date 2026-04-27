part of '../safety_check.dart';

class SafetyCheckConfirmButton extends HookWidget {
  const SafetyCheckConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SafetyCheckCubit>();
    final userData = context.read<UserDataRepository>();
    final i18n = context.i18n.features.safetyCheck;

    final (count,) = useBlocSelector(
      cubit,
      (SafetyCheckState state) => (state.answers.length,),
    );
    final ready = count == safetyCheckQuestionCount;

    return FButton(
      onPress: ready
          ? () {
              if (cubit.blocked) {
                userData.update(displayName: null, onboardingStep: 2);
                context.pushSafetyBlocked();
              } else {
                userData.update(displayName: null, onboardingStep: 3);
                context.pushAssessment();
              }
            }
          : null,
      child: Text(i18n.confirmButton.text),
    );
  }
}
