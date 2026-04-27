part of '../player.dart';

class PlayerControls extends HookWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlayerCubit>();

    final (playing,) = useBlocSelector(
      cubit,
      (PlayerState state) => (state.playing,),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FButton.icon(
          variant: .outline,
          onPress: cubit.rewind,
          child: const Icon(FIcons.skipBack),
        ),
        const SaykoGap.three(),
        FButton.icon(
          onPress: cubit.togglePlay,
          child: Icon(playing ? FIcons.pause : FIcons.play),
        ),
        const SaykoGap.three(),
        FButton.icon(
          variant: .outline,
          onPress: cubit.forward,
          child: const Icon(FIcons.skipForward),
        ),
      ],
    );
  }
}
