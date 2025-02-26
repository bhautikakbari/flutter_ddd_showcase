// application/commands/follow_user_command.dart
import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/repositories/i_github_repository.dart';

class FollowUserCommand {
  final IGithubRepository repository;

  FollowUserCommand(this.repository);

  Future<Either<Failure, Unit>> execute(String username) {
    return repository.followUser(username);
  }
}