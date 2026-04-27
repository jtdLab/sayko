part of '../settings_system_language.dart';

class SettingsSystemLanguageItem extends HookWidget with FItemMixin {
  const SettingsSystemLanguageItem({
    required this.isSelected,
    required this.locale,
    required this.onPress,
    super.key,
  });

  final bool isSelected;
  final Locale locale;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colors = theme.colors;

    return FItem(
      title: Text(locale.i18n(context)),
      details: Text(
        locale.i18nNative(context),
        style: TextStyle(color: colors.mutedForeground),
      ),
      prefix: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? colors.primary : colors.muted,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          FIcons.languages,
          color: isSelected ? colors.primaryForeground : colors.foreground,
          size: 20,
        ),
      ),
      suffix: isSelected ? Icon(FIcons.check, color: colors.primary) : null,
      selected: isSelected,
      onPress: onPress,
    );
  }
}
