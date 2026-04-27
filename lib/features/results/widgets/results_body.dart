part of '../results.dart';

class ResultsBody extends HookWidget {
  const ResultsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.results;

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const ResultsHeader(),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FCard(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(FIcons.leaf, size: 16, color: context.theme.colors.primary),
                          const SaykoGap.one(),
                          SaykoEyebrow(i18n.strengths.label),
                        ],
                      ),
                      const SaykoGap.oneAndHalf(),
                      const ResultsAxisBar(label: 'Relationships', value: 4),
                      const ResultsAxisBar(label: 'Body awareness', value: 3.6),
                    ],
                  ),
                ),
              ),
              const SaykoGap.oneAndHalf(),
              FCard(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(FIcons.sparkles, size: 16, color: context.theme.colors.primary),
                          const SaykoGap.one(),
                          SaykoEyebrow(i18n.growth.label),
                        ],
                      ),
                      const SaykoGap.oneAndHalf(),
                      const ResultsAxisBar(label: 'Stress response', value: 2),
                      const ResultsAxisBar(label: 'Rest & sleep', value: 2.5),
                    ],
                  ),
                ),
              ),
              const SaykoGap.three(),
              const ResultsRecommended(),
              const SaykoGap.three(),
              const ResultsContinueButton(),
            ],
          ),
        ),
      ],
    );
  }
}
