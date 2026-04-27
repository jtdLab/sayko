part of '../player.dart';

PlayerState _stateForSession(ListeningSession session) {
  return PlayerState(
    playing: false,
    seconds: 0,
    total: session.durationSeconds,
    title: session.title,
    subtitle: session.subtitle,
    coverImageUrl: session.coverImageUrl,
    toneKey: session.toneKey,
  );
}

class PlayerCubit extends Cubit<PlayerState>
    with CubitSubscriptionMixin<PlayerState> {
  PlayerCubit({required ListeningSession session})
      : _session = session,
        _player = AudioPlayer(),
        super(_stateForSession(session)) {
    _init();
  }

  final ListeningSession _session;
  final AudioPlayer _player;
  Timer? _fallbackTimer;
  var _audioReady = false;
  var _fallbackMode = false;

  Future<void> _init() async {
    emitOnEach(_player.positionStream, (_) {
      if (isClosed || !_audioReady || _fallbackMode) return;
      final dur = _player.duration;
      final total = dur != null && dur.inSeconds > 0
          ? dur.inSeconds
          : state.total;
      final pos = _player.position.inSeconds;
      emit(state.copyWith(
        seconds: pos.clamp(0, total),
        total: total,
      ));
    }, key: 'position');

    emitOnEach(_player.durationStream, (d) {
      if (isClosed || !_audioReady || d == null) return;
      final sec = d.inSeconds;
      if (sec > 0) emit(state.copyWith(total: sec));
    }, key: 'duration');

    emitOnEach(_player.playerStateStream, (playerState) {
      if (isClosed || !_audioReady || _fallbackMode) return;
      emit(state.copyWith(playing: playerState.playing));
    }, key: 'playerState');

    try {
      await _player.setUrl(_session.audioUrl);
      _audioReady = true;
      final dur = _player.duration;
      if (dur != null && dur.inSeconds > 0) {
        emit(state.copyWith(total: dur.inSeconds));
      }
      await _player.play();
    } on Object catch (_) {
      _audioReady = false;
      _fallbackMode = true;
      emit(state.copyWith(playing: true));
      _startFallbackTicker();
    }
  }

  void _startFallbackTicker() {
    _fallbackTimer?.cancel();
    _fallbackTimer = Timer.periodic(const Duration(milliseconds: 80), (_) {
      if (isClosed || !_fallbackMode || !state.playing) return;
      final next = (state.seconds + 2).clamp(0, state.total);
      emit(state.copyWith(seconds: next));
    });
  }

  void togglePlay() {
    if (_fallbackMode) {
      emit(state.copyWith(playing: !state.playing));
      return;
    }
    if (!_audioReady) return;
    if (_player.playing) {
      _player.pause();
    } else {
      _player.play();
    }
  }

  void rewind() {
    if (_audioReady && !_fallbackMode) {
      final next = _player.position - const Duration(seconds: 15);
      unawaited(
        _player.seek(next < Duration.zero ? Duration.zero : next),
      );
    } else {
      emit(state.copyWith(
        seconds: (state.seconds - 15).clamp(0, state.total),
      ));
    }
  }

  void forward() {
    if (_audioReady && !_fallbackMode) {
      final end = _player.duration ?? Duration(seconds: state.total);
      final next = _player.position + const Duration(seconds: 15);
      unawaited(_player.seek(next > end ? end : next));
    } else {
      emit(state.copyWith(
        seconds: (state.seconds + 15).clamp(0, state.total),
      ));
    }
  }

  @override
  Future<void> close() async {
    _fallbackTimer?.cancel();
    await _player.dispose();
    await super.close();
  }
}
