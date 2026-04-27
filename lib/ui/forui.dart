part of 'ui.dart';

extension UiForuiBuildContextX on BuildContext {
  Animation<double> get fDialogAnimation => read<Animation<double>>();

  Future<T?> showFDialog<T>(
    Widget Function(BuildContext context) builder, {
    bool useRootNavigator = false,
  }) => forui.showFDialog<T>(
    context: this,
    useRootNavigator: useRootNavigator,
    builder: (context, _, animation) =>
        ListenableProvider<Animation<double>>.value(
          value: animation,
          child: builder(context),
        ),
  );
}
