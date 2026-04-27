part of '../sign_up_password.dart';

class SignUpPasswordPasswordButton extends HookWidget {
  const SignUpPasswordPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpPasswordCubit>();
    final i18n = context.i18n.features.signUpPassword.passwordButton;

    final password = useBlocSelector(
      cubit,
      (SignUpPasswordState state) => state.password,
    );

    final canSignUp = password.isValidPassword;

    return FButton(
      onPress: canSignUp ? cubit.signUp : null,
      child: Text(i18n.label),
    );
  }
}
