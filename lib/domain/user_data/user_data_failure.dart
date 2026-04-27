part of 'user_data.dart';

sealed class UserDataFailure extends Failure {}

final class UserDataUpdateFailure extends UserDataFailure {}
