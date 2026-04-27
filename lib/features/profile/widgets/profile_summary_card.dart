part of '../profile.dart';

class ProfileSummaryCard extends HookWidget {
  const ProfileSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.profile;
    final theme = context.theme;

    return FCard(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  i18n.yourProfile.label.toUpperCase(),
                  style: theme.typography.xs.copyWith(
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  i18n.redoButton.text,
                  style: theme.typography.xs.copyWith(
                    color: theme.colors.mutedForeground,
                  ),
                ),
              ],
            ),
            const SaykoGap.oneAndHalf(),
            for (final ax in const [
              ('Relationships', 4.0),
              ('Body awareness', 3.6),
              ('Self-relation', 3.0),
            ])
              Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(ax.$1, style: theme.typography.sm),
                        Text(
                          '${ax.$2.toStringAsFixed(1)} / 5',
                          style: theme.typography.xs.copyWith(
                            color: theme.colors.mutedForeground,
                          ),
                        ),
                      ],
                    ),
                    const SaykoGap.threeQuarters(),
                    FDeterminateProgress(value: ax.$2 / 5),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
