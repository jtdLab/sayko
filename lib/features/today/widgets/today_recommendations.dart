part of '../today.dart';

class TodayRecommendations extends HookWidget {
  const TodayRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.today;
    final theme = context.theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 22,
              height: 22,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: theme.colors.foreground,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'AI',
                style: theme.typography.xs.copyWith(
                  color: theme.colors.background,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
            ),
            const SaykoGap.one(),
            SaykoEyebrow(i18n.aiRecLabel.text, color: theme.colors.foreground),
          ],
        ),
        const SaykoGap.one(),
        for (final s in const [
          ('Releasing the Day', 'Rest & sleep · 32 min', SaykoTone.dusk),
          ('The Inner Friend', 'Self-relation · 26 min', SaykoTone.sage),
          ('Soft Focus', 'Focus · 30 min', SaykoTone.sand),
        ])
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                SaykoSessionArt(
                  tone: s.$3,
                  size: 52,
                  coverImageUrl: SaykoSessionCoverUrls.byTitle(s.$1),
                ),
                const SaykoGap.oneAndHalf(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s.$1,
                        style: theme.typography.sm.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        s.$2,
                        style: theme.typography.xs.copyWith(
                          color: theme.colors.mutedForeground,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  FIcons.lock,
                  size: 13,
                  color: theme.colors.mutedForeground,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
