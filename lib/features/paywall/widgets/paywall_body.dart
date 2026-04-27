part of '../paywall.dart';

class PaywallBody extends HookWidget {
  const PaywallBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.paywall;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const PaywallHeader(),
          const SaykoGap.three(),
          PaywallPlanCard(
            plan: PaywallPlan.annual,
            title: i18n.annualPlan.title,
            sub: '€6.58 / mo, billed annually',
            price: '€79',
            badge: i18n.annualPlan.badge,
          ),
          const SaykoGap.one(),
          PaywallPlanCard(
            plan: PaywallPlan.single,
            title: i18n.singlePlan.title,
            sub: i18n.singlePlan.sub,
            price: '€9',
          ),
          const SaykoGap.three(),
          const PaywallFeatureList(),
          const SaykoGap.three(),
          const PaywallSubscribeButton(),
        ],
      ),
    );
  }
}
