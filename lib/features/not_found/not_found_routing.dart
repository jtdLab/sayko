part of 'not_found.dart';

extension on BuildContext {
  void replaceHome() {
    wouter.actions.replace<void>('/today');
  }
}
