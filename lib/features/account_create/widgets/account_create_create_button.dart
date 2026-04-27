part of '../account_create.dart';

class AccountCreateCreateButton extends HookWidget {
  const AccountCreateCreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AccountCreateCubit>();
    final i18n = context.i18n.features.accountCreate.createButton;

    final (hasAcceptedTerms, name) = useBlocSelector(
      cubit,
      (AccountCreateState state) => (state.hasAcceptedTerms, state.name),
    );

    final canCreateAccount = name.isValidName && hasAcceptedTerms;

    return FButton(
      onPress: canCreateAccount ? cubit.createAccount : null,
      child: Text(i18n.label),
    );
  }
}
