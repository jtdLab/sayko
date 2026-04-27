part of 'password_reset.dart';

class PasswordResetPage extends HookWidget {
  const PasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    final i18n = context.i18n.features.passwordReset;

    useBlocPresentationListener<
      PasswordResetCubit,
      PasswordResetPresentationEvent
    >(
      listener: (context, event) {
        switch (event) {
          case PasswordResetPresentationEventSendPasswordResetEmailSucceeded():
            showFToast(
              context: context,
              title: Text(i18n.sendPasswordResetEmailSucceeded),
            );
            context.pop();
          case PasswordResetPresentationEventSendPasswordResetEmailFailed():
            showFToast(
              context: context,
              title: Text(i18n.failedToSendPasswordResetEmail),
            );
        }
      },
    );

    final isMobile = breakpoint == SaykoBreakpoint.mobile;
    final alignment = isMobile ? Alignment.topCenter : Alignment.center;

    return FScaffold(
      header: const PasswordResetHeader(),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Align(
              alignment: alignment,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: const PasswordResetBody(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
