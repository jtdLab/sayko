part of 'library.dart';

extension LibraryRoutingBuildContextX on BuildContext {
  Future<void> pushPlayerFromLibrary() {
    return wouter.actions.push<void>('/player');
  }
}
