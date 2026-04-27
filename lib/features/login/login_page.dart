part of 'login.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    final theme = context.theme;
    final spacings = theme.spacings;

    final isMobile = breakpoint == SaykoBreakpoint.mobile;

    final alignment = isMobile ? Alignment.bottomCenter : Alignment.center;
    final padding = EdgeInsets.only(bottom: spacings.four);

    return FScaffold(
      resizeToAvoidBottomInset: false,
      header: const LoginHeader(),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            child: Align(
              alignment: alignment,
              child: Padding(
                padding: padding,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 540),
                  child: const LoginBody(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
