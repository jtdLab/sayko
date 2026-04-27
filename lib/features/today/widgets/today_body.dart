part of '../today.dart';

class TodayBody extends HookWidget {
  const TodayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: const [
        TodayHeader(),
        SaykoGap.three(),
        TodayFeaturedCard(),
        SaykoGap.three(),
        TodayRecommendations(),
        SaykoGap.three(),
        TodayPracticeNote(),
      ],
    );
  }
}
