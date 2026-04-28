part of '../sign_up.dart';

class SignUpBody extends HookWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final platform = context.read<Platform>();

    final isIos = platform == Platform.ios;
    final isWeb = platform == Platform.web;
    final spacings = theme.spacings;

    final showAppleButton = isIos || isWeb;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SignUpLogo(),
        const SignUpTitle(),
        const SaykoGap.four(),
        Column(
          spacing: spacings.one,
          children: [
            const SignUpEmailButton(),
            if (showAppleButton) const SignUpAppleButton(),
            const SignUpGoogleButton(),
          ],
        ),
        const SaykoGap.four(),
        const SignUpAlreadyHaveAnAccount(),
        const SaykoGap.one(),
        const SignUpLogInLink(),
      ],
    );
  }
}
