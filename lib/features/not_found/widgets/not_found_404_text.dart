part of '../not_found.dart';

class NotFound404Text extends HookWidget {
  const NotFound404Text({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    final typography = theme.typography;

    return Text(
      '404',
      textAlign: TextAlign.center,
      style: typography.xl6.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
