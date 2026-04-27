part of '../auth.dart';

class AuthLoginButton extends HookWidget {
  const AuthLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.auth.loginButton;

    return FButton(
      variant: .outline,
      onPress: () => context.pushLogin(),
      child: Text(i18n.title),
    );
  }
}
