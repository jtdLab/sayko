part of 'login_password.dart';

class LoginPasswordPage extends HookWidget {
  const LoginPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    final i18n = context.i18n.features.loginPassword;

    useBlocPresentationListener<
      LoginPasswordCubit,
      LoginPasswordPresentationEvent
    >(
      listener: (context, state) {
        switch (state) {
          case LoginPasswordPresentationEventSignInFailed():
            showFToast(context: context, title: Text(i18n.failedToSignIn));
        }
      },
    );

    final isMobile = breakpoint == SaykoBreakpoint.mobile;
    final alignment = isMobile ? Alignment.topCenter : Alignment.center;

    return FScaffold(
      header: const LoginPasswordHeader(),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Align(
              alignment: alignment,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: const LoginPasswordBody(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
