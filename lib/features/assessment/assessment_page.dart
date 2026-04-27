part of 'assessment.dart';

class AssessmentPage extends HookWidget {
  const AssessmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FScaffold(
      child: SafeArea(
        child: AssessmentBody(),
      ),
    );
  }
}
