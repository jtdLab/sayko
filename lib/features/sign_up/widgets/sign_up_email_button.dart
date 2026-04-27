part of '../sign_up.dart';

class SignUpEmailButton extends HookWidget {
  const SignUpEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.signUp.emailButton;

    return FButton(
      onPress: () => context.pushSignUpPassword(),
      prefix: const Icon(FIcons.mail),
      child: Text(i18n.text),
    );
  }
}
