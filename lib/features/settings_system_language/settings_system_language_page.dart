part of 'settings_system_language.dart';

class SettingsSystemLanguagePage extends HookWidget {
  const SettingsSystemLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: const SettingsSystemLanguageHeader(),
      child: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 540),
            child: const SettingsSystemLanguageBody(),
          ),
        ),
      ),
    );
  }
}
