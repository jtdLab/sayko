part of '../player.dart';

class PlayerBody extends HookWidget {
  const PlayerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SaykoAbstractScape(
      tone: SaykoTone.sand,
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

class _BreathRing extends StatelessWidget {
  const _BreathRing();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 240,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xB3FFFFFF),
                width: 1.5,
              ),
            ),
          ),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0x40FFFFFF),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0x66FFFFFF)),
            ),
          ),
        ],
      ),
    );
  }
}
