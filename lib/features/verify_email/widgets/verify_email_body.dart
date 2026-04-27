part of '../verify_email.dart';

class VerifyEmailBody extends HookWidget {
  const VerifyEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.verifyEmail.body;
    final theme = context.theme;
    final spacings = theme.spacings;

    return Padding(
      padding: EdgeInsets.all(spacings.three),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FAlert(title: Text(i18n.title), subtitle: Text(i18n.description)),
          const SaykoGap.two(),
          const VerifyEmailSendButton(),
        ],
      ),
    );
  }
}
