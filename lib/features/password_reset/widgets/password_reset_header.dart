part of '../password_reset.dart';

class PasswordResetHeader extends HookWidget {
  const PasswordResetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.passwordReset.header;

    return FHeader.nested(
      title: Text(i18n.title),
      prefixes: [FHeaderAction.back(onPress: () => context.pop())],
    );
  }
}
