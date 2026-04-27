part of '../welcome.dart';

class WelcomeSlide extends HookWidget {
  const WelcomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WelcomeCubit>();
    final i18n = context.i18n.features.welcome;
    final theme = context.theme;

    final (slide,) = useBlocSelector(
      cubit,
      (WelcomeState state) => (state.slideIndex,),
    );

    final (eyebrow, title, body) = switch (slide) {
      0 => (i18n.slide1.eyebrow, i18n.slide1.title, i18n.slide1.body),
      1 => (i18n.slide2.eyebrow, i18n.slide2.title, i18n.slide2.body),
      _ => (i18n.slide3.eyebrow, i18n.slide3.title, i18n.slide3.body),
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SaykoEyebrow(eyebrow),
        const SaykoGap.oneAndHalf(),
        SaykoSerifText(title, size: 38, height: 1.08),
        const SaykoGap.two(),
        Text(
          body,
          style: theme.typography.sm.copyWith(
            color: theme.colors.mutedForeground,
            height: 1.55,
          ),
        ),
      ],
    );
  }
}
