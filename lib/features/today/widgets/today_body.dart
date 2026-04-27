part of '../today.dart';

class TodayBody extends HookWidget {
  const TodayBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pad = context.theme.style.pagePadding;
    return ListView(
      padding: EdgeInsets.only(top: pad.top, bottom: pad.bottom),
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
