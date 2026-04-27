part of '../today.dart';

class TodayHeader extends HookWidget {
  const TodayHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.today.header;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SaykoEyebrow(i18n.greeting),
        const SaykoGap.one(),
        SaykoSerifText(i18n.tagline, size: 32, height: 1.1),
      ],
    );
  }
}
