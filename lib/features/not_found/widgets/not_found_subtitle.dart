part of '../not_found.dart';

class NotFoundSubtitle extends HookWidget {
  const NotFoundSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.notFound.body.subtitle;
    final theme = context.theme;

    final colors = theme.colors;
    final typography = theme.typography;

    return Text(
      i18n.text,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: typography.sm.copyWith(color: colors.mutedForeground),
    );
  }
}
