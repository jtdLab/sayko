part of '../account_create.dart';

class AccountCreateRequiredBadge extends HookWidget {
  const AccountCreateRequiredBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.accountCreate.requiredBadge;
    final theme = context.theme;

    final spacings = theme.spacings;
    final typography = theme.typography;

    return FBadge(
      variant: .secondary,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: spacings.half),
        child: Text(i18n.label, style: typography.xs),
      ),
    );
  }
}
