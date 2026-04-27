part of 'safety_blocked.dart';

class SafetyBlockedPage extends HookWidget {
  const SafetyBlockedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(child: SafeArea(child: SafetyBlockedBody()));
  }
}
