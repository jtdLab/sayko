part of '../sign_up.dart';

class SignUpHeader extends HookWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return FHeader.nested(
      prefixes: [FHeaderAction.back(onPress: () => context.pop())],
    );
  }
}
