part of '../verify_email.dart';

class VerifyEmailHeader extends HookWidget {
  const VerifyEmailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.verifyEmail.header;

    return FHeader.nested(title: Text(i18n.title));
  }
}
