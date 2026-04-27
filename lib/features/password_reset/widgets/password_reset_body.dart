part of '../password_reset.dart';

class PasswordResetBody extends HookWidget {
  const PasswordResetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PasswordResetEmailField(),
        SaykoGap.oneAndHalf(),
        PasswordResetButton(),
        SaykoGap.one(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PasswordResetHelpPrompt(),
            SaykoGap.half(),
            PasswordResetContactSupportButton(),
          ],
        ),
      ],
    );
  }
}
