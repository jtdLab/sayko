part of 'bloc.dart';

class BlocProvider<T extends StateStreamableSource<Object?>>
    extends SingleChildStatelessWidget {
  /// {@macro bloc_provider}
  const BlocProvider({
    required T Function(BuildContext context) create,
    this.child,
    this.lazy = true,
    super.key,
  }) : _create = create,
       _value = null,
       super(child: child);

  /// Takes a [value] and a [child] which will have access to the [value] via
  /// `BlocProvider.of(context)`.
  /// When `BlocProvider.value` is used, the [Bloc] or [Cubit]
  /// will not be automatically closed.
  /// As a result, `BlocProvider.value` should only be used for providing
  /// existing instances to new subtrees.
  ///
  /// A new [Bloc] or [Cubit] should not be created in `BlocProvider.value`.
  /// New instances should always be created using the
  /// default constructor within the `create` function.
  ///
  /// ```dart
  /// BlocProvider.value(
  ///   value: BlocProvider.of<BlocA>(context),
  ///   child: ScreenA(),
  /// );
  /// ```
  const BlocProvider.value({required T value, this.child, super.key})
    : _value = value,
      _create = null,
      lazy = true,
      super(child: child);

  /// Widget which will have access to the [Bloc] or [Cubit].
  final Widget? child;

  /// Whether the [Bloc] or [Cubit] should be created lazily.
  /// Defaults to `true`.
  final bool lazy;

  final T Function(BuildContext context)? _create;

  final T? _value;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    assert(
      child != null,
      '$runtimeType used outside of MultiBlocProvider must specify a child',
    );
    final value = _value;
    return value != null
        ? InheritedProvider<T>.value(
            value: value,
            startListening: _startListening,
            lazy: lazy,
            child: child,
          )
        : InheritedProvider<T>(
            create: _create,
            dispose: (_, bloc) => bloc.close(),
            startListening: _startListening,
            lazy: lazy,
            child: child,
          );
  }

  static VoidCallback _startListening(
    InheritedContext<StateStreamable<dynamic>?> e,
    StateStreamable<dynamic> value,
  ) {
    final subscription = value.stream.listen(
      (dynamic _) => e.markNeedsNotifyDependents(),
    );
    return subscription.cancel;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('lazy', lazy));
  }
}
