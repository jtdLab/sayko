part of '../password_reset.dart';

class PasswordResetHelpPrompt extends HookWidget {
  const PasswordResetHelpPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.passwordReset.helpPrompt;
    final theme = context.theme;

    final colors = theme.colors;
    final typography = theme.typography;

    return Text(
      i18n.text,
      style: typography.xs.copyWith(color: colors.mutedForeground),
    );
  }
}
