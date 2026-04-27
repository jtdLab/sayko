part of '../password_reset.dart';

class PasswordResetButton extends HookWidget {
  const PasswordResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PasswordResetCubit>();
    final i18n = context.i18n.features.passwordReset.button;

    final (email, isLoading) = useBlocSelector(
      cubit,
      (PasswordResetState state) =>
          (state.email, state.status == PasswordResetStatus.loading),
    );

    final canSendPasswordResetEmail = email.isValidEmail && !isLoading;

    return FButton(
      onPress: canSendPasswordResetEmail ? cubit.sendPasswordResetEmail : null,
      prefix: isLoading ? const FCircularProgress() : null,
      child: Text(i18n.label),
    );
  }
}
