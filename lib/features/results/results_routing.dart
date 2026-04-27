part of 'results.dart';

extension ResultsRoutingBuildContextX on BuildContext {
  Future<void> pushLibraryFromResults() {
    return wouter.actions.push<void>('/library');
  }
}
