part of '../account_create.dart';

class AccountCreateTermsItem extends HookWidget {
  const AccountCreateTermsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AccountCreateCubit>();
    final i18n = context.i18n.features.accountCreate.termsItem;
    final theme = context.theme;

    final colors = theme.colors;
    final spacings = theme.spacings;
    final typography = theme.typography;

    final hasAcceptedTerms = useBlocSelector(
      cubit,
      (AccountCreateState state) => state.hasAcceptedTerms,
    );

    return FTappable(
      onPress: cubit.toggleTermsAcceptance,
      child: FLabel(
        axis: Axis.horizontal,
        label: Text(
          i18n.label,
          maxLines: 3,
          style: typography.xs.copyWith(
            color: colors.mutedForeground,
            fontWeight: FontWeight.w400,
            height: 1.2,
          ),
        ),
        description: Padding(
          padding: EdgeInsets.symmetric(vertical: spacings.half),
          child: Text(
            i18n.description,
            style: typography.xs.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        child: FRadio(
          value: hasAcceptedTerms,
          onChange: (_) => cubit.toggleTermsAcceptance(),
        ),
      ),
    );
  }
}
