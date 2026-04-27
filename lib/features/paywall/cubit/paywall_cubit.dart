part of '../paywall.dart';

PaywallState _initialState() {
  return const PaywallState(plan: PaywallPlan.annual);
}

class PaywallCubit extends Cubit<PaywallState> {
  PaywallCubit() : super(_initialState());

  void selectPlan(PaywallPlan plan) {
    emit(state.copyWith(plan: plan));
  }
}
