part of 'bloc.dart';

typedef BlocWidgetListener<S> = void Function(BuildContext context, S state);

typedef BlocListenerCondition<S> = bool Function(S previous, S next);

void useBlocListener<B extends BlocBase<S>, S>({
  required BlocWidgetListener<S> listener,
  B? bloc,
  BlocListenerCondition<S>? listenWhen,
}) {
  final context = useContext();

  final theBloc = bloc ?? context.read<B>();

  final lastStateRef = useRef<S>(theBloc.state);

  useOnStreamChange<S>(
    theBloc.stream,
    onData: (state) {
      final previousState = lastStateRef.value;

      final shouldListen = listenWhen?.call(previousState, state) ?? true;
      if (shouldListen && context.mounted) {
        listener(context, state);
      }

      lastStateRef.value = state;
    },
    onError: (error, stackTrace) {},
  );
}
