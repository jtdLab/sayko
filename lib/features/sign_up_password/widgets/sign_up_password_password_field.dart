part of '../sign_up_password.dart';

class SignUpPasswordPasswordField extends HookWidget {
  const SignUpPasswordPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpPasswordCubit>();
    final i18n = context.i18n.features.signUpPassword.passwordField;
    final theme = context.theme;

    final colors = theme.colors;
    final typography = theme.typography;

    return FTextField.password(
      control: .managed(onChange: (value) => cubit.changePassword(value.text)),
      autofocus: true,
      textInputAction: TextInputAction.done,
      label: Text(
        i18n.label,
        style: typography.xl2.copyWith(fontWeight: FontWeight.w700),
      ),
      description: Text(
        i18n.description,
        style: typography.xs.copyWith(color: colors.mutedForeground),
      ),
    );
  }
}
