part of '../login.dart';

class LoginHeader extends HookWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return FHeader.nested(
      prefixes: [FHeaderAction.back(onPress: () => context.pop())],
    );
  }
}
