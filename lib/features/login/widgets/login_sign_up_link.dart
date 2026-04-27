part of '../login.dart';

class LoginSignUpLink extends HookWidget {
  const LoginSignUpLink({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.login.signUpLink;

    return FButton(
      variant: .ghost,
      onPress: () => context.pushSignUp(),
      child: Text(i18n.text),
    );
  }
}
