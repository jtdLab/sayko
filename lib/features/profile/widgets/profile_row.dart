part of '../profile.dart';

class ProfileRow extends HookWidget {
  const ProfileRow({
    required this.icon,
    required this.label,
    this.onTap,
    super.key,
  });
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: theme.colors.border),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: theme.colors.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, size: 15, color: theme.colors.foreground),
            ),
            const SaykoGap.oneAndHalf(),
            Expanded(child: Text(label, style: theme.typography.sm)),
            Icon(FIcons.chevronRight, size: 14, color: theme.colors.mutedForeground),
          ],
        ),
      ),
    );
  }
}
