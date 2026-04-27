part of '../sign_up_password.dart';

class SignUpPasswordBody extends HookWidget {
  const SignUpPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final queryParameters = useQueryParameters();

    final step = queryParameters['step'];

    return switch (step) {
      'password' => const SignUpPasswordBodyPassword(),
      _ => const SignUpPasswordBodyEmail(),
    };
  }
}
