part of 'sign_up_password.dart';

class SignUpPasswordPage extends HookWidget {
  const SignUpPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    final i18n = context.i18n.features.signUpPassword;

    useBlocPresentationListener<
      SignUpPasswordCubit,
      SignUpPasswordPresentationEvent
    >(
      listener: (context, event) {
        switch (event) {
          case SignUpPasswordPresentationEventSignUpFailed():
            showFToast(context: context, title: Text(i18n.failedToSignUp));
        }
      },
    );

    final isMobile = breakpoint == SaykoBreakpoint.mobile;
    final alignment = isMobile ? Alignment.topCenter : Alignment.center;

    return FScaffold(
      header: const SignUpPasswordHeader(),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            child: Align(
              alignment: alignment,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: const SignUpPasswordBody(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
