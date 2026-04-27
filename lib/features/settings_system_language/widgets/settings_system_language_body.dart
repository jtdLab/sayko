part of '../settings_system_language.dart';

class SettingsSystemLanguageBody extends HookWidget {
  const SettingsSystemLanguageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FItemGroup(
          divider: FItemDivider.indented,
          children: [
            for (final supportedLocale in supportedLocales)
              SettingsSystemLanguageItem(
                locale: supportedLocale,
                isSelected: supportedLocale.languageCode == locale.languageCode,
                onPress: () => setLocale(supportedLocale.languageCode),
              ),
          ],
        ),
      ],
    );
  }
}
