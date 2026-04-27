part of '../safety_blocked.dart';

class SafetyBlockedBackButton extends HookWidget {
  const SafetyBlockedBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.safetyBlocked;

    return FButton(
      variant: .outline,
      onPress: () => context.popSafetyBlocked(),
      child: Text(i18n.backButton.text),
    );
  }
}
