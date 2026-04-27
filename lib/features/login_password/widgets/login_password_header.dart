part of '../login_password.dart';

class LoginPasswordHeader extends HookWidget {
  const LoginPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.loginPassword.header;

    return FHeader.nested(
      title: Text(i18n.title),
      prefixes: [FHeaderAction.back(onPress: () => context.pop())],
    );
  }
}
