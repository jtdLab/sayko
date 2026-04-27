part of '../library.dart';

class LibrarySessionRow extends HookWidget {
  const LibrarySessionRow({
    required this.title,
    required this.subtitle,
    required this.tone,
    required this.locked,
    super.key,
  });

  final String title;
  final String subtitle;
  final SaykoTone tone;
  final bool locked;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: () => context.pushPlayerFromLibrary(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            SaykoSessionArt(
              tone: tone,
              size: 56,
              coverImageUrl: SaykoSessionCoverUrls.byTitle(title),
            ),
            const SaykoGap.oneAndHalf(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.typography.sm.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: theme.typography.xs.copyWith(
                      color: theme.colors.mutedForeground,
                    ),
                  ),
                ],
              ),
            ),
            if (locked)
              Icon(FIcons.lock, size: 14, color: theme.colors.mutedForeground),
          ],
        ),
      ),
    );
  }
}
