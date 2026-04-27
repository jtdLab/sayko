part of '../safety_check.dart';

class SafetyCheckHeader extends HookWidget {
  const SafetyCheckHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.safetyCheck.header;
    final theme = context.theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: theme.colors.secondary,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: theme.colors.border),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(FIcons.shield, size: 14, color: theme.colors.mutedForeground),
              const SizedBox(width: 6),
              Text(
                i18n.eyebrow,
                style: theme.typography.xs.copyWith(
                  color: theme.colors.mutedForeground,
                ),
              ),
            ],
          ),
        ),
        const SaykoGap.oneAndHalf(),
        SaykoSerifText(i18n.title, size: 28, height: 1.2),
        const SaykoGap.one(),
        Text(
          i18n.body,
          style: theme.typography.sm.copyWith(
            color: theme.colors.mutedForeground,
            height: 1.55,
          ),
        ),
      ],
    );
  }
}
