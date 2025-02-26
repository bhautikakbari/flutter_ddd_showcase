// domain/core/failures.dart
abstract class Failure {
  String get message;
}

class ServerFailure extends Failure {
  @override
  String get message => 'Server error occurred';
}

class NetworkFailure extends Failure {
  @override
  String get message => 'Network error occurred';
}

class InvalidInputFailure extends Failure {
  final String error;

  InvalidInputFailure(this.error);

  @override
  String get message => error;
}