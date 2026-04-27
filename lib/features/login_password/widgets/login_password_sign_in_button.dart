part of '../login_password.dart';

class LoginPasswordSignInButton extends HookWidget {
  const LoginPasswordSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginPasswordCubit>();
    final i18n = context.i18n.features.loginPassword.signInButton;

    final isLoading = useBlocSelector(
      cubit,
      (LoginPasswordState state) => state.status == LoginPasswordStatus.loading,
    );

    return FButton(
      onPress: isLoading ? null : cubit.signIn,
      prefix: isLoading ? const FCircularProgress() : null,
      child: Text(i18n.text),
    );
  }
}
