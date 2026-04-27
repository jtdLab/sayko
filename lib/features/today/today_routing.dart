part of 'today.dart';

extension TodayRoutingBuildContextX on BuildContext {
  Future<void> pushPlayerFromToday() {
    return pushPlayerSession(SessionCatalog.quietPlace.id);
  }
}
