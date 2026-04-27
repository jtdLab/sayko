part of '../launchpad.dart';

class LaunchpadBottomNavigationBar extends HookWidget {
  const LaunchpadBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final haptics = context.read<Haptics>();
    final i18n = context.i18n.features.launchpad.bottomNavigationBar;

    final index = _useIndex();

    return FBottomNavigationBar(
      index: index,
      onChange: (index) {
        haptics.selectionClick();
        context.pushLaunchpadTab(index);
      },
      children: [
        FBottomNavigationBarItem(
          icon: const Icon(FIcons.house),
          label: Text(i18n.home),
        ),
        FBottomNavigationBarItem(
          icon: const Icon(FIcons.settings),
          label: Text(i18n.settings),
        ),
      ],
    );
  }
}
