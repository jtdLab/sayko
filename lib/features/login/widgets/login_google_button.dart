part of '../login.dart';

class LoginGoogleButton extends HookWidget {
  const LoginGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    final i18n = context.i18n.features.login.googleButton;

    return FButton(
      variant: .outline,
      onPress: cubit.signInWithGoogle,
      prefix: const Icon(Social.google),
      child: Text(i18n.text),
    );
  }
}
