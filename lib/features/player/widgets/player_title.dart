part of '../player.dart';

class PlayerTitle extends HookWidget {
  const PlayerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.player;
    final theme = context.theme;

    return Column(
      children: [
        SaykoEyebrow(i18n.nowPlaying.label),
        const SaykoGap.one(),
        const SaykoSerifText(
          'A Quiet Place to Land',
          size: 28,
          height: 1.2,
        ),
        const SizedBox(height: 4),
        Text(
          'Grounding for racing minds',
          style: theme.typography.sm.copyWith(
            color: theme.colors.mutedForeground,
          ),
        ),
      ],
    );
  }
}
