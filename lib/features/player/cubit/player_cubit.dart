part of '../player.dart';

PlayerState _initialState() {
  return const PlayerState(playing: true, seconds: 0, total: 28 * 60);
}

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(_initialState()) {
    _tick();
  }

  Timer? _timer;

  void _tick() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(milliseconds: 80), (_) {
      if (!state.playing) return;
      final next = (state.seconds + 2).clamp(0, state.total);
      emit(state.copyWith(seconds: next));
    });
  }

  void togglePlay() => emit(state.copyWith(playing: !state.playing));
  void rewind() => emit(state.copyWith(
        seconds: (state.seconds - 15).clamp(0, state.total),
      ));
  void forward() => emit(state.copyWith(
        seconds: (state.seconds + 15).clamp(0, state.total),
      ));

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
