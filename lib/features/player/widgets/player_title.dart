part of '../player.dart';

class PlayerTitle extends HookWidget {
  const PlayerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlayerCubit>();
    final i18n = context.i18n.features.player;
    final theme = context.theme;

    final (title, subtitle) = useBlocSelector(
      cubit,
      (PlayerState state) => (state.title, state.subtitle),
    );

    return Column(
      children: [
        SaykoEyebrow(i18n.nowPlaying.label),
        const SaykoGap.one(),
        SaykoSerifText(
          title,
          size: 28,
          height: 1.2,
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: theme.typography.sm.copyWith(
            color: theme.colors.foreground,
          ),
        ),
      ],
    );
  }
}
