part of '../not_found.dart';

class NotFoundIcon extends HookWidget {
  const NotFoundIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    final colors = theme.colors;
    final spacings = theme.spacings;

    return Container(
      padding: EdgeInsets.all(spacings.two),
      decoration: BoxDecoration(
        color: colors.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(FIcons.search, size: 64, color: colors.primary),
    );
  }
}
