part of '../today.dart';

class TodayPracticeNote extends HookWidget {
  const TodayPracticeNote({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.today.practiceNote;
    final theme = context.theme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colors.primary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SaykoEyebrow(i18n.eyebrow, color: theme.colors.primary),
          const SaykoGap.one(),
          SaykoSerifText(
            '“${i18n.quote}”',
            size: 19,
            height: 1.4,
            weight: FontWeight.w400,
          ),
          const SaykoGap.one(),
          Text(
            i18n.author,
            style: theme.typography.xs.copyWith(
              color: theme.colors.mutedForeground,
            ),
          ),
        ],
      ),
    );
  }
}
