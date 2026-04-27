part of '../sign_up_password.dart';

class SignUpPasswordBodyPassword extends HookWidget {
  const SignUpPasswordBodyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SignUpPasswordPasswordField(),
        SaykoGap.three(),
        SignUpPasswordPasswordButton(),
      ],
    );
  }
}
