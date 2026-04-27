part of '../not_found.dart';

class NotFoundTitle extends HookWidget {
  const NotFoundTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.notFound.body.title;
    final theme = context.theme;

    final typography = theme.typography;

    return Text(i18n.text, textAlign: TextAlign.center, style: typography.xl2);
  }
}
