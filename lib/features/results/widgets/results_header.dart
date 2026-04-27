part of '../results.dart';

class ResultsHeader extends HookWidget {
  const ResultsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.results.header;

    return SizedBox(
      height: 220,
      child: SaykoAbstractScape(
        tone: SaykoTone.sand,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SaykoEyebrow(i18n.eyebrow),
              const SaykoGap.one(),
              SaykoSerifText(i18n.title, size: 28, height: 1.2),
            ],
          ),
        ),
      ),
    );
  }
}
