part of 'player.dart';

class PlayerPage extends HookWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(childPad: false, child: PlayerBody());
  }
}
