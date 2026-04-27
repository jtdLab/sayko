part of '../sign_up.dart';

class SignUpAppleButton extends HookWidget {
  const SignUpAppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    final i18n = context.i18n.features.signUp.appleButton;

    return FButton(
      variant: .outline,
      onPress: cubit.signInWithApple,
      prefix: const Icon(Social.apple),
      child: Text(i18n.text),
    );
  }
}
