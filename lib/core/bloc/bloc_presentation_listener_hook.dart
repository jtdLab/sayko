part of 'bloc.dart';

void useBlocPresentationListener<
  B extends BlocPresentationMixin<dynamic, P>,
  P
>({required BlocPresentationWidgetListener<P> listener, B? bloc}) {
  final context = useContext();

  final theBloc = bloc ?? context.read<B>();

  useOnStreamChange<P>(
    theBloc.presentation,
    onData: (event) {
      if (context.mounted) {
        listener(context, event);
      }
    },
    onError: (error, stackTrace) {},
  );
}
