part of '../ui.dart';

enum SaykoTone { sand, dusk, sage, rose }

class SaykoTonePalette {
  const SaykoTonePalette(this.start, this.end);
  final Color start;
  final Color end;

  static const Map<SaykoTone, SaykoTonePalette> palettes = {
    SaykoTone.sand: SaykoTonePalette(Color(0xFFEBC59A), Color(0xFFD49862)),
    SaykoTone.dusk: SaykoTonePalette(Color(0xFFCBA08F), Color(0xFF855A4B)),
    SaykoTone.sage: SaykoTonePalette(Color(0xFFD9DFC9), Color(0xFFA1B49B)),
    SaykoTone.rose: SaykoTonePalette(Color(0xFFE8C4B8), Color(0xFFC9907F)),
  };

  static SaykoTonePalette of(SaykoTone tone) => palettes[tone]!;
}
