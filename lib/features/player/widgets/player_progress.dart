part of '../player.dart';

class PlayerProgress extends HookWidget {
  const PlayerProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlayerCubit>();
    final theme = context.theme;

    final (seconds, total) = useBlocSelector(
      cubit,
      (PlayerState state) => (state.seconds, state.total),
    );

    return Column(
      children: [
        FDeterminateProgress(value: total == 0 ? 0 : seconds / total),
        const SaykoGap.one(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              formatPlayerTime(seconds),
              style: theme.typography.xs.copyWith(
                color: theme.colors.foreground,
              ),
            ),
            Text(
              '−${formatPlayerTime(total - seconds)}',
              style: theme.typography.xs.copyWith(
                color: theme.colors.foreground,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
