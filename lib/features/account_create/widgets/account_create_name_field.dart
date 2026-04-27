part of '../account_create.dart';

class AccountCreateNameField extends HookWidget {
  const AccountCreateNameField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AccountCreateCubit>();
    final i18n = context.i18n.features.accountCreate.nameField;
    final theme = context.theme;

    final colors = theme.colors;
    final typography = theme.typography;

    return FTextField(
      control: .managed(onChange: (value) => cubit.changeName(value.text)),
      autofocus: true,
      label: Text(
        i18n.label,
        style: typography.xl2.copyWith(fontWeight: FontWeight.w700),
      ),
      description: Text(
        i18n.description,
        style: typography.xs.copyWith(color: colors.mutedForeground),
      ),
    );
  }
}
