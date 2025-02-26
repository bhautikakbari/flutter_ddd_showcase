// application/queries/get_user_repositories_query.dart
import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/entities/github_repo.dart';
import '../../domain/repositories/i_github_repository.dart';

class GetUserRepositoriesQuery {
  final IGithubRepository repository;

  GetUserRepositoriesQuery(this.repository);

  Future<Either<Failure, List<GithubRepo>>> execute(String username) {
    return repository.getUserRepositories(username);
  }
}