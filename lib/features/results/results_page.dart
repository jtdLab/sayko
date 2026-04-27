part of 'results.dart';

class ResultsPage extends HookWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(childPad: false, child: ResultsBody());
  }
}
