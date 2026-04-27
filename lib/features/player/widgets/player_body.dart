part of '../player.dart';

class PlayerBody extends HookWidget {
  const PlayerBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlayerCubit>();
    final (toneKey, coverUrl) = useBlocSelector(
      cubit,
      (PlayerState state) => (state.toneKey, state.coverImageUrl),
    );
    final tone = saykoToneFromKey(toneKey);
    return SaykoAbstractScape(
      tone: tone,
      coverImageUrl: coverUrl,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: FButton.icon(
                  onPress: () => context.closePlayer(),
                  child: const Icon(FIcons.chevronDown),
                ),
              ),
              const Spacer(),
              const _BreathRing(),
              const Spacer(),
              const PlayerTitle(),
              const SaykoGap.three(),
              const PlayerProgress(),
              const SaykoGap.three(),
              const PlayerControls(),
              const SaykoGap.three(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BreathRing extends HookWidget {
  const _BreathRing();

  static const _outer = 240.0;
  static const _inner = 130.0;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 5000),
    );
    useEffect(() {
      controller.repeat(reverse: true);
      return null;
    }, [controller]);

    return SizedBox(
      width: _outer,
      height: _outer,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final t = Curves.easeInOutCubic.transform(controller.value);
          final outerScale = 1.0 + 0.055 * t;
          final innerScale = 1.0 + 0.11 * t;
          final innerFillA = 0.22 + 0.12 * t;
          final innerBorderA = 0.35 + 0.15 * t;
          return Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Transform.scale(
                scale: outerScale,
                child: Container(
                  width: _outer,
                  height: _outer,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xB3FFFFFF),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              Transform.scale(
                scale: innerScale,
                child: Container(
                  width: _inner,
                  height: _inner,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, innerFillA),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, innerBorderA),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
