part of '../ui.dart';

class SaykoLogo extends StatelessWidget {
  const SaykoLogo({this.size, super.key});

  final double? size;

  @override
  Widget build(BuildContext context) {
    final brightness = context.deviceBrightness;
    final height = size ?? 32;

    return switch (brightness) {
      Brightness.light => SaykoAssets.logos.logoLight.image,
      Brightness.dark => SaykoAssets.logos.logoDark.image,
    }(height: height);
  }
}
