part of '../verify_email.dart';

class VerifyEmailSendButton extends HookWidget {
  const VerifyEmailSendButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.verifyEmail.sendButton;
    final cubit = context.read<VerifyEmailCubit>();

    final isLoading = useBlocSelector(
      cubit,
      (VerifyEmailState state) => state.status == VerifyEmailStatus.loading,
    );

    return FButton(
      onPress: isLoading ? null : cubit.sendVerifyEmail,
      prefix: isLoading ? const FCircularProgress() : null,
      child: Text(i18n.label),
    );
  }
}
