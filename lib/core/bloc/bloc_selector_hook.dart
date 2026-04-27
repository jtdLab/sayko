part of 'bloc.dart';

R useBlocSelector<S, R>(BlocBase<S> bloc, R Function(S state) selector) {
  final result = useStream(bloc.stream.map((e) => selector(e)).distinct());
  return result.data ?? selector(bloc.state);
}
