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
        BlocProvider(
          create: (context) => SettingsCubit(
            authRepository: context.read(),
            appDataRepository: context.read(),
          ),
          child: const SettingsPage(),
        ),
      ],
    );
  }
}
