part of 'player.dart';

class PlayerPage extends HookWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final qp = useQueryParameters();
    final sessionId = qp['session'] ?? SessionCatalog.quietPlace.id;
    final session = SessionCatalog.resolve(sessionId);
    return BlocProvider(
      key: ValueKey<String>(sessionId),
      create: (_) => PlayerCubit(session: session),
      child: const FScaffold(childPad: false, child: PlayerBody()),
    );
  }
}
