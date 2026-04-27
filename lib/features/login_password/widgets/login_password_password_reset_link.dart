part of '../login_password.dart';

class LoginPasswordPasswordResetLink extends HookWidget {
  const LoginPasswordPasswordResetLink({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.loginPassword.passwordResetLink;

    return Align(
      alignment: Alignment.centerRight,
      child: FButton(
        variant: .ghost,
        onPress: () => context.pushPasswordReset(),
        child: Text(i18n.link),
      ),
    );
  }
}
