// application/commands/unfollow_user_command.dart
import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/repositories/i_github_repository.dart';

class UnfollowUserCommand {
  final IGithubRepository repository;

  UnfollowUserCommand(this.repository);

  Future<Either<Failure, Unit>> execute(String username) {
    return repository.unfollowUser(username);
  }
}