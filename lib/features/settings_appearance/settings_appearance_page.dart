part of 'settings_appearance.dart';

class SettingsAppearancePage extends HookWidget {
  const SettingsAppearancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: const SettingsAppearanceHeader(),
      child: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 540),
            child: const SettingsAppearanceBody(),
          ),
        ),
      ),
    );
  }
}
