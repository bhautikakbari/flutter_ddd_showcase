// domain/value_objects/repository_name.dart
import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

class RepositoryName extends ValueObject<String> {
  final Either<Failure, String> value;

  factory RepositoryName(String input) {
    if (input.isEmpty) {
      return RepositoryName._(left(InvalidInputFailure('Repository name cannot be empty')));
    }
    return RepositoryName._(right(input));
  }

  const RepositoryName._(this.value);
}