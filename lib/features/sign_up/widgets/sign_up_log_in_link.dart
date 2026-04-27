part of '../sign_up.dart';

class SignUpLogInLink extends HookWidget {
  const SignUpLogInLink({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.signUp.logInLink;

    return FButton(
      variant: .ghost,
      onPress: () => context.pushLogin(),
      child: Text(i18n.text),
    );
  }
}
