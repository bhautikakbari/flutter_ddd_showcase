// domain/core/errors.dart
class UnexpectedValueError extends Error {
  final String message;

  UnexpectedValueError(this.message);

  @override
  String toString() => 'UnexpectedValueError: $message';
}