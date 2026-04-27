part of '../safety_blocked.dart';

class SafetyBlockedHeader extends HookWidget {
  const SafetyBlockedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.safetyBlocked.header;
    final theme = context.theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 56,
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: theme.colors.destructive.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(FIcons.heart, size: 26, color: theme.colors.destructive),
        ),
        const SaykoGap.two(),
        SaykoSerifText(i18n.title, size: 26, height: 1.2),
        const SaykoGap.oneAndHalf(),
        Text(
          i18n.body,
          style: theme.typography.sm.copyWith(
            color: theme.colors.mutedForeground,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}
