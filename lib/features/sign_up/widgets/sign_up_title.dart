part of '../sign_up.dart';

class SignUpTitle extends HookWidget {
  const SignUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.signUp.title;
    final theme = context.theme;

    final spacings = theme.spacings;
    final typography = theme.typography;

    final padding = EdgeInsets.all(spacings.three);

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
