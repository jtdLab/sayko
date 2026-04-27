part of '../sign_up_password.dart';

class SignUpPasswordEmailButton extends HookWidget {
  const SignUpPasswordEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpPasswordCubit>();
    final i18n = context.i18n.features.signUpPassword.emailButton;

    final email = useBlocSelector(
      cubit,
      (SignUpPasswordState state) => state.email,
    );

    final canContinue = email.isValidEmail;

    return FButton(
      onPress: canContinue
          ? () => context.pushSignUpPassword(step: 'password')
          : null,
      child: Text(i18n.label),
    );
  }
}
