part of 'account_create.dart';

class AccountCreatePage extends HookWidget {
  const AccountCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.accountCreate;
    final theme = context.theme;
    final typography = theme.typography;
    final spacings = theme.spacings;

    useBlocPresentationListener<
      AccountCreateCubit,
      AccountCreatePresentationEvent
    >(
      listener: (context, event) {
        switch (event) {
          case AccountCreatePresentationEventCreateAccountFailed():
            showFToast(
              context: context,
              title: Text(i18n.failedToCreateAccount, style: typography.sm),
            );
        }
      },
    );

    final padding = EdgeInsets.only(bottom: spacings.four);

    return SafeArea(
      minimum: padding,
      child: FScaffold(
        header: const AccountCreateHeader(),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              child: Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 540),
                  child: const AccountCreateBody(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
