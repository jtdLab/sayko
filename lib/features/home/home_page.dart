part of 'home.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: const HomeHeader(),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Align(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: const HomeBody(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
