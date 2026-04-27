part of 'verify_email.dart';

class VerifyEmailPage extends HookWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.verifyEmail;

    useBlocPresentationListener<VerifyEmailCubit, VerifyEmailPresentationEvent>(
      listener: (context, event) {
        switch (event) {
          case VerifyEmailPresentationEventSendVerifyEmailFailed():
            showFToast(
              context: context,
              title: Text(i18n.sendVerifyEmailFailed),
            );
          case VerifyEmailPresentationEventEmailVerified():
            context.replaceAccountCreate();
        }
      },
    );

    return FScaffold(
      header: const VerifyEmailHeader(),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            child: Align(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: const VerifyEmailBody(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
