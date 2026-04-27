part of '../today.dart';

class TodayFeaturedCard extends HookWidget {
  const TodayFeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.today.featuredCard;
    final theme = context.theme;
    const session = SessionCatalog.quietPlace;
    final tone = saykoToneFromKey(session.toneKey);

    return GestureDetector(
      onTap: () => context.pushPlayerFromToday(),
      child: FCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 180,
              child: SaykoSessionArt(
                tone: tone,
                borderRadius: 0,
                coverImageUrl: session.coverImageUrl,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xB3000000),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        i18n.badge.toUpperCase(),
                        style: theme.typography.xs.copyWith(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SaykoSerifText(
                    session.title,
                    size: 22,
                    height: 1.2,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    session.subtitle,
                    style: theme.typography.sm.copyWith(
                      color: theme.colors.mutedForeground,
                    ),
                  ),
                  const SaykoGap.oneAndHalf(),
                  Row(
                    children: [
                      FButton(
                        onPress: () => context.pushPlayerFromToday(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(FIcons.play, size: 14),
                            const SizedBox(width: 6),
                            Text(i18n.listenButton),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
