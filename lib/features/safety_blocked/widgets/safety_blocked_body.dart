part of '../safety_blocked.dart';

class SafetyBlockedBody extends HookWidget {
  const SafetyBlockedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: const [
        SafetyBlockedHeader(),
        SaykoGap.three(),
        SafetyBlockedContactCard(),
        SaykoGap.three(),
        SafetyBlockedBackButton(),
      ],
    );
  }
}
