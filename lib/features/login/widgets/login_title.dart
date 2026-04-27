part of '../login.dart';

class LoginTitle extends HookWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.login.title;
    final theme = context.theme;

    final padding = EdgeInsets.all(theme.spacings.three);
    final typography = theme.typography;

    return Padding(
      padding: padding,
      child: Text(
        i18n.text,
        textAlign: TextAlign.center,
        style: typography.xl3.copyWith(
          fontWeight: FontWeight.w700,
          height: 1.3,
        ),
      ),
    );
  }
}
