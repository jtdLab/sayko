part of 'welcome.dart';

class WelcomePage extends HookWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(childPad: false, child: WelcomeBody());
  }
}
