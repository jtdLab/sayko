part of '../login_password.dart';

class LoginPasswordEmailField extends HookWidget {
  const LoginPasswordEmailField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginPasswordCubit>();
    final i18n = context.i18n.features.loginPassword.emailField;
    final theme = context.theme;

    final typography = theme.typography;

    return FTextField.email(
      control: .managed(onChange: (value) => cubit.changeEmail(value.text)),
      autofocus: true,
      label: Text(
        i18n.label,
        style: typography.xl2.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
