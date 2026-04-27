part of '../sign_up_password.dart';

class SignUpPasswordHeader extends HookWidget {
  const SignUpPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.signUpPassword.header;

    return FHeader.nested(
      title: Text(i18n.title),
      prefixes: [FHeaderAction.back(onPress: () => context.pop())],
    );
  }
}
