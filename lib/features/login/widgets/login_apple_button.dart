part of '../login.dart';

class LoginAppleButton extends HookWidget {
  const LoginAppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    final i18n = context.i18n.features.login.appleButton;

    return FButton(
      variant: .outline,
      onPress: cubit.signInWithApple,
      prefix: const Icon(Social.apple),
      child: Text(i18n.text),
    );
  }
}
