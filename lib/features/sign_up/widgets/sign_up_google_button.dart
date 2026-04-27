part of '../sign_up.dart';

class SignUpGoogleButton extends HookWidget {
  const SignUpGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    final i18n = context.i18n.features.signUp.googleButton;

    return FButton(
      variant: .outline,
      onPress: cubit.signInWithGoogle,
      prefix: const Icon(Social.google),
      child: Text(i18n.text),
    );
  }
}
