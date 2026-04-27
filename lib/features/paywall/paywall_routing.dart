part of 'paywall.dart';

extension PaywallRoutingBuildContextX on BuildContext {
  Future<void> showPaywallSheet() {
    return showFSheet<void>(
      context: this,
      side: FLayout.btt,
      mainAxisMaxRatio: null,
      useSafeArea: true,
      builder: (context) => BlocProvider(
        create: (_) => PaywallCubit(),
        child: const PaywallSheet(),
      ),
    );
  }
}
