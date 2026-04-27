part of '../login.dart';

class LoginEmailButton extends HookWidget {
  const LoginEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.login.emailButton;

    return FButton(
      onPress: () => context.pushLoginPassword(),
      prefix: const Icon(FIcons.mail),
      child: Text(i18n.text),
    );
  }
}
