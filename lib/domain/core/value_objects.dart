// domain/core/value_objects.dart
import 'package:dartz/dartz.dart';
import 'failures.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<Failure, T> get value;

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}