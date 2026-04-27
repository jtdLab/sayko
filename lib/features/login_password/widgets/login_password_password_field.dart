part of '../login_password.dart';

class LoginPasswordPasswordField extends HookWidget {
  const LoginPasswordPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginPasswordCubit>();
    final i18n = context.i18n.features.loginPassword.passwordField;
    final theme = context.theme;

    final typography = theme.typography;

    return FTextField.password(
      control: .managed(onChange: (value) => cubit.changePassword(value.text)),
      textInputAction: TextInputAction.done,
      label: Text(
        i18n.label,
        style: typography.xl2.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
