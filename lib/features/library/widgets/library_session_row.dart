part of '../library.dart';

class LibrarySessionRow extends HookWidget {
  const LibrarySessionRow({
    required this.session,
    required this.onTap,
    super.key,
  });

  final ListeningSession session;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final tone = saykoToneFromKey(session.toneKey);
    final locked = session.requiresSubscription;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            SaykoSessionArt(
              tone: tone,
              size: 56,
              coverImageUrl: session.coverImageUrl,
            ),
            const SaykoGap.oneAndHalf(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    session.title,
                    style: theme.typography.sm.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    session.subtitle,
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
