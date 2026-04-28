part of '../login.dart';

class LoginBody extends HookWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final platform = context.read<Platform>();
    final spacings = theme.spacings;

    final isIos = platform == Platform.ios;
    final isWeb = platform == Platform.web;

    final showAppleButton = isIos || isWeb;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const LoginLogo(),
        const LoginTitle(),
        const SaykoGap.four(),
        Column(
          spacing: spacings.one,
          children: [
            const LoginEmailButton(),
            if (showAppleButton) const LoginAppleButton(),
            const LoginGoogleButton(),
          ],
        ),
        const SaykoGap.four(),
        const LoginDontHaveAnAccount(),
        const SaykoGap.one(),
        const LoginSignUpLink(),
      ],
    );
  }
}
