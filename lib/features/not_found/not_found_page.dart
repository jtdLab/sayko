part of 'not_found.dart';

class NotFoundPage extends HookWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;

    final isMobile = breakpoint == SaykoBreakpoint.mobile;
    final alignment = isMobile ? Alignment.topCenter : Alignment.center;

    return FScaffold(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Align(
              alignment: alignment,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: const NotFoundBody(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
