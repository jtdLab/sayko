part of '../password_reset.dart';

class PasswordResetContactSupportButton extends HookWidget {
  const PasswordResetContactSupportButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.passwordReset.contactSupportButton;
    final theme = context.theme;

    final colors = theme.colors;
    final typography = theme.typography;

    return FButton(
      variant: .ghost,
      onPress: () {},
      child: Text(
        i18n.text,
        style: typography.xs.copyWith(
          color: colors.primary,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
