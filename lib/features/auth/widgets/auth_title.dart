part of '../auth.dart';

class AuthTitle extends HookWidget {
  const AuthTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.auth.title;
    final theme = context.theme;

    final padding = EdgeInsets.all(theme.spacings.three);
    final typography = theme.typography;

    return Padding(
      padding: padding,
      child: Text(
        i18n.text,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: typography.xl3.copyWith(
          fontWeight: FontWeight.w700,
          height: 1.3,
        ),
      ),
    );
  }
}
