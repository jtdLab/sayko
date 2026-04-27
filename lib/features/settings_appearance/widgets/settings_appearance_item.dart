part of '../settings_appearance.dart';

class SettingsAppearanceItem extends HookWidget with FItemMixin {
  const SettingsAppearanceItem({required this.appearance, super.key});

  final Appearance appearance;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsAppearanceCubit>();
    final theme = context.theme;

    final isSelected = useBlocSelector(
      cubit,
      (SettingsAppearanceState state) => state.appearance == appearance,
    );

    final colors = theme.colors;
    final typography = theme.typography;

    return FItem(
      title: Text(appearance.i18n(context), style: typography.md),
      subtitle: Text(appearance.description(context), style: typography.sm),
      prefix: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? colors.primary : colors.muted,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          appearance.icon,
          color: isSelected ? colors.primaryForeground : colors.foreground,
          size: 20,
        ),
      ),
      suffix: isSelected ? Icon(FIcons.check, color: colors.primary) : null,
      selected: isSelected,
      onPress: () => cubit.changeAppearance(appearance),
    );
  }
}
