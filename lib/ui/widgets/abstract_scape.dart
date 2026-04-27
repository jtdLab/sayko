part of '../ui.dart';

class SaykoAbstractScape extends StatelessWidget {
  const SaykoAbstractScape({
    required this.tone,
    required this.child,
    this.coverImageUrl,
    super.key,
  });

  final SaykoTone tone;
  final Widget child;
  final String? coverImageUrl;

  @override
  Widget build(BuildContext context) {
    final palette = SaykoTonePalette.of(tone);
    final hasCover =
        coverImageUrl != null && coverImageUrl!.isNotEmpty;
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0, -1),
              end: const Alignment(0, 1.1),
              colors: [palette.start, palette.end],
            ),
          ),
        ),
        if (hasCover)
          Positioned.fill(
            child: SaykoImage.network(
              imageUrl: coverImageUrl!,
              fit: BoxFit.cover,
              errorWidget: (_, _, _) => const SizedBox.shrink(),
            ),
          ),
        if (hasCover)
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0x66000000),
                    palette.end.withValues(alpha: 0.92),
                  ],
                ),
              ),
            ),
          ),
        Positioned(
          top: -80,
          left: -100,
          child: _ScapeBlob(color: const Color(0x8CFFFFFF), size: 320),
        ),
        Positioned(
          bottom: -60,
          right: -80,
          child: _ScapeBlob(color: const Color(0x14000000), size: 260),
        ),
        child,
      ],
    );
  }
}

class _ScapeBlob extends StatelessWidget {
  const _ScapeBlob({required this.color, required this.size});
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
