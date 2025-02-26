// application/commands/unstar_repository_command.dart
import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/repositories/i_github_repository.dart';

class UnstarRepositoryCommand {
  final IGithubRepository repository;

  UnstarRepositoryCommand(this.repository);

  Future<Either<Failure, Unit>> execute(String owner, String repo) {
    return repository.unstarRepository(owner, repo);
  }
}