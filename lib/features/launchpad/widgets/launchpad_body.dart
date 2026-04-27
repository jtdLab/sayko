part of '../launchpad.dart';

class LaunchpadBody extends HookWidget {
  const LaunchpadBody({super.key});

  @override
  Widget build(BuildContext context) {
    final index = _useIndex();

    return IndexedStack(
      index: index,
      children: [
        const TodayPage(),
        BlocProvider(
          create: (context) => LibraryCubit(),
          child: const LibraryPage(),
        ),
        const ProfilePage(),
      ],
    );
  }
}
