part of '../sign_up_password.dart';

class SignUpPasswordBodyEmail extends HookWidget {
  const SignUpPasswordBodyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SignUpPasswordEmailField(),
        SaykoGap.three(),
        SignUpPasswordEmailButton(),
      ],
    );
  }
}
