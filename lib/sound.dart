import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';

class Sound {
  @visibleForTesting
  Sound({AudioPlayer? audioPlayer})
    : _audioPlayer = audioPlayer ?? AudioPlayer();

  @visibleForTesting
  static Sound? overrides;

  static Sound get instance => overrides ?? _instance;

  static final Sound _instance = Sound();

  final AudioPlayer _audioPlayer;

  // ignore: unused_element
  Future<void> _play(String asset, {double volume = 0.8}) async {
    await _audioPlayer.stop();
    await _audioPlayer.setAsset(asset);
    await _audioPlayer.setVolume(volume);
    await _audioPlayer.play();
  }
}
