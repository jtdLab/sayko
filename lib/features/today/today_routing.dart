part of 'today.dart';

extension TodayRoutingBuildContextX on BuildContext {
  Future<void> pushPlayerFromToday() {
    return wouter.actions.push<void>('/player');
  }
}
