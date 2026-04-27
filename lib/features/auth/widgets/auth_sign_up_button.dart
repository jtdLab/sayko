part of '../auth.dart';

class AuthSignUpButton extends HookWidget {
  const AuthSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.auth.signUpButton;

    return FButton(
      onPress: () => context.pushSignUp(),
      child: Text(i18n.title),
    );
  }
}
