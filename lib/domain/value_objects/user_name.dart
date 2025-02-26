// domain/value_objects/user_name.dart
import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

class UserName extends ValueObject<String> {
  final Either<Failure, String> value;

  factory UserName(String input) {
    if (input.isEmpty) {
      return UserName._(left(InvalidInputFailure('Username cannot be empty')));
    }
    return UserName._(right(input));
  }

  const UserName._(this.value);
}