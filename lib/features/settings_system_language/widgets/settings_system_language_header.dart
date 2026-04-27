part of '../settings_system_language.dart';

class SettingsSystemLanguageHeader extends HookWidget {
  const SettingsSystemLanguageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settingsSystemLanguage.header;

    return FHeader.nested(
      title: Text(i18n.title),
      prefixes: [FHeaderAction.back(onPress: () => context.pop())],
    );
  }
}
