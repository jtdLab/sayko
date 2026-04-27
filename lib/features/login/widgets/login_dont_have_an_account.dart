part of '../login.dart';

class LoginDontHaveAnAccount extends HookWidget {
  const LoginDontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.login.dontHaveAnAccount;
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
