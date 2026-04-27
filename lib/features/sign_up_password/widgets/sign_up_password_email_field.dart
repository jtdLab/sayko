part of '../sign_up_password.dart';

class SignUpPasswordEmailField extends HookWidget {
  const SignUpPasswordEmailField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpPasswordCubit>();
    final i18n = context.i18n.features.signUpPassword.emailField;
    final theme = context.theme;

    final colors = theme.colors;
    final typography = theme.typography;

    return FTextField.email(
      control: .managed(onChange: (value) => cubit.changeEmail(value.text)),
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
