part of 'bloc.dart';

mixin CubitSubscriptionMixin<State> on Cubit<State> {
  final _subscriptions = <Object, StreamSubscription<dynamic>>{};

  void emitForEach<T>(
    Stream<T> stream,
    State Function(T) onEvent, {
    String? key,
  }) {
    if (_subscriptions.containsKey(key ?? T)) {
      _subscriptions[key ?? T]?.cancel().ignore();
    }
    _subscriptions[key ?? T] = stream.listen((e) {
      if (isClosed) return;
      emit(onEvent(e));
    });
  }

  void emitOnEach<T>(
    Stream<T> stream,
    void Function(T) onEvent, {
    String? key,
  }) {
    if (_subscriptions.containsKey(key ?? T)) {
      _subscriptions[key ?? T]?.cancel().ignore();
    }
    _subscriptions[key ?? T] = stream.listen(onEvent);
  }

  @override
  Future<void> close() {
    for (final subscription in _subscriptions.values) {
      subscription.cancel().ignore();
    }
    return super.close();
  }
}
