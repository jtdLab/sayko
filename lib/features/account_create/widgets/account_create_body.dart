part of '../account_create.dart';

class AccountCreateBody extends HookWidget {
  const AccountCreateBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final spacings = theme.spacings;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AccountCreateNameField(),
        FDivider(
          style: .delta(
            padding: .add(EdgeInsets.symmetric(horizontal: spacings.two)),
          ),
        ),
        const SaykoGap.one(),
        const AccountCreateRequiredBadge(),
        const SaykoGap.three(),
        const AccountCreateTermsItem(),
        const SaykoGap.three(),
        const AccountCreatePrivacyItem(),
        const Spacer(),
        const AccountCreateCreateButton(),
      ],
    );
  }
}
