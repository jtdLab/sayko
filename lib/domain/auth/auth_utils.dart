part of 'auth.dart';

extension on UserDto {
  User toModel() {
    return User(id: id, isVerified: isVerified);
  }
}
