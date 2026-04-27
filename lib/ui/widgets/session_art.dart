part of '../ui.dart';

class SaykoSessionArt extends StatelessWidget {
  const SaykoSessionArt({
    required this.tone,
    this.coverImageUrl,
    this.size,
    this.borderRadius = 12,
    this.child,
    super.key,
  });

  final SaykoTone tone;
  final String? coverImageUrl;
  final double? size;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final palette = SaykoTonePalette.of(tone);
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final cacheExtent = size != null ? (size! * dpr).round() : null;
    final hasCover = coverImageUrl != null && coverImageUrl!.isNotEmpty;
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
          if (hasCover)
            Positioned.fill(
              child: SaykoImage.network(
                imageUrl: coverImageUrl!,
                fit: BoxFit.cover,
                memCacheWidth: cacheExtent,
                memCacheHeight: cacheExtent,
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
                      const Color(0x00000000),
                      palette.end.withValues(alpha: 0.45),
                    ],
                  ),
                ),
              ),
            ),
          if (!hasCover) ...[
            const Positioned(
              top: -30,
              left: -30,
              child: _Blob(color: Color(0x59FFFFFF), size: 130),
            ),
            const Positioned(
              bottom: -20,
              right: -30,
              child: _Blob(color: Color(0x14000000), size: 100),
            ),
          ],
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
