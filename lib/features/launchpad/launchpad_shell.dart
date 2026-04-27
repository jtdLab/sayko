part of 'launchpad.dart';

class LaunchpadShell extends HookWidget {
  const LaunchpadShell({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(
      childPad: false,
      footer: LaunchpadBottomNavigationBar(),
      child: LaunchpadBody(),
    );
  }
}
