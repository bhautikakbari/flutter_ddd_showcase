// application/queries/get_user_profile_query.dart
import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/entities/github_user.dart';
import '../../domain/repositories/i_github_repository.dart';

class GetUserProfileQuery {
  final IGithubRepository repository;

  GetUserProfileQuery(this.repository);

  Future<Either<Failure, GithubUser>> execute(String username) {
    return repository.getUser(username);
  }
}