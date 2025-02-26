// application/commands/star_repository_command.dart
import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/repositories/i_github_repository.dart';

class StarRepositoryCommand {
  final IGithubRepository repository;

  StarRepositoryCommand(this.repository);

  Future<Either<Failure, Unit>> execute(String owner, String repo) {
    return repository.starRepository(owner, repo);
  }
}