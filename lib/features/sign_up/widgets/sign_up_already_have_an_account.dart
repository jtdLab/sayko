part of '../sign_up.dart';

class SignUpAlreadyHaveAnAccount extends HookWidget {
  const SignUpAlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.signUp.alreadyHaveAnAccount;
    final theme = context.theme;

    final colors = theme.colors;
    final typography = theme.typography;

    return Text(
      i18n.text,
      textAlign: TextAlign.center,
      style: typography.sm.copyWith(color: colors.mutedForeground),
    );
  }
}
