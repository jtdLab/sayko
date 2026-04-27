part of '../safety_blocked.dart';

class SafetyBlockedContactCard extends HookWidget {
  const SafetyBlockedContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.safetyBlocked;
    final theme = context.theme;

    return FCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              i18n.acuteHelp.label,
              style: theme.typography.xs.copyWith(
                color: theme.colors.mutedForeground,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SaykoGap.oneAndHalf(),
            _Row(label: i18n.contactSeelsorge.label, sub: i18n.contactSeelsorge.sub),
            const SaykoGap.one(),
            FDivider(),
            const SaykoGap.one(),
            _Row(label: i18n.contactEmergency.label, sub: i18n.contactEmergency.sub),
            const SaykoGap.one(),
            FDivider(),
            const SaykoGap.one(),
            _Row(label: i18n.contactKrisenchat.label, sub: i18n.contactKrisenchat.sub),
          ],
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.label, required this.sub});
  final String label;
  final String sub;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.typography.sm.copyWith(fontWeight: FontWeight.w500)),
        const SizedBox(height: 2),
        Text(
          sub,
          style: theme.typography.xs.copyWith(color: theme.colors.mutedForeground),
        ),
      ],
    );
  }
}
