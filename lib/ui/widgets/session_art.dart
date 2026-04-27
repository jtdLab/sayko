part of '../ui.dart';

class SaykoSessionArt extends StatelessWidget {
  const SaykoSessionArt({
    required this.tone,
    this.size,
    this.borderRadius = 12,
    this.child,
    super.key,
  });

  final SaykoTone tone;
  final double? size;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final palette = SaykoTonePalette.of(tone);
    final art = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [palette.start, palette.end],
              ),
            ),
          ),
          Positioned(
            top: -30,
            left: -30,
            child: _Blob(color: const Color(0x59FFFFFF), size: 130),
          ),
          Positioned(
            bottom: -20,
            right: -30,
            child: _Blob(color: const Color(0x14000000), size: 100),
          ),
          if (child != null) child!,
        ],
      ),
    );

    if (size != null) {
      return SizedBox(width: size, height: size, child: art);
    }
    return art;
  }
}

class _Blob extends StatelessWidget {
  const _Blob({required this.color, required this.size});
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
