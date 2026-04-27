part of 'player.dart';

extension PlayerRoutingBuildContextX on BuildContext {
  void closePlayer() {
    wouter.actions.pop();
  }
}
