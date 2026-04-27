part of '../login_password.dart';

class LoginPasswordBody extends HookWidget {
  const LoginPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LoginPasswordEmailField(),
        SaykoGap.one(),
        LoginPasswordPasswordField(),
        SaykoGap.half(),
        LoginPasswordPasswordResetLink(),
        SaykoGap.two(),
        LoginPasswordSignInButton(),
      ],
    );
  }
}
