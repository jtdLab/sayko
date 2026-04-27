part of '../results.dart';

class ResultsRecommended extends HookWidget {
  const ResultsRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.results.recommended;
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
            Text(
              i18n.title,
              style: theme.typography.lg.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SaykoGap.one(),
        for (final item in const [
          ('A Quiet Place to Land', 'Stress · 28 min', SaykoTone.sand),
          ('Releasing the Day', 'Sleep · 32 min', SaykoTone.dusk),
          ('The Inner Friend', 'Self · 26 min', SaykoTone.sage),
        ])
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FCard(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    SaykoSessionArt(tone: item.$3, size: 60),
                    const SaykoGap.oneAndHalf(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.$1,
                            style: theme.typography.sm.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            item.$2,
                            style: theme.typography.xs.copyWith(
                              color: theme.colors.mutedForeground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
