part of '../password_reset.dart';

class PasswordResetEmailField extends HookWidget {
  const PasswordResetEmailField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PasswordResetCubit>();
    final i18n = context.i18n.features.passwordReset.emailField;
    final theme = context.theme;

    final typography = theme.typography;

    return FTextField.email(
      control: .managed(onChange: (value) => cubit.changeEmail(value.text)),
      autofocus: true,
      textInputAction: TextInputAction.done,
      label: Text(
        i18n.label,
        style: typography.xl2.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
