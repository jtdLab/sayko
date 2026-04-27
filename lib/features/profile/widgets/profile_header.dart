part of '../profile.dart';

class ProfileHeader extends HookWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.profile.header;
    final theme = context.theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SaykoEyebrow(i18n.eyebrow),
        const SaykoGap.one(),
        SaykoSerifText(i18n.name, size: 30, height: 1.15),
        const SizedBox(height: 4),
        Text(
          i18n.email,
          style: theme.typography.sm.copyWith(
            color: theme.colors.mutedForeground,
          ),
        ),
      ],
    );
  }
}
