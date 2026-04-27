part of '../paywall.dart';

class PaywallFeatureList extends HookWidget {
  const PaywallFeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.paywall;
    final theme = context.theme;
    final items = [
      i18n.feature1.label,
      i18n.feature2.label,
      i18n.feature3.label,
      i18n.feature4.label,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final t in items)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.colors.primary.withValues(alpha: 0.15),
                  ),
                  child: Icon(FIcons.check, size: 12, color: theme.colors.primary),
                ),
                const SaykoGap.oneAndHalf(),
                Expanded(child: Text(t, style: theme.typography.sm)),
              ],
            ),
          ),
      ],
    );
  }
}
