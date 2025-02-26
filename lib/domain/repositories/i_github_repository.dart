// domain/repositories/i_github_repository.dart
import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../entities/github_user.dart';
import '../entities/github_repo.dart';

abstract class IGithubRepository {
  Future<Either<Failure, GithubUser>> getUser(String username);
  Future<Either<Failure, List<GithubRepo>>> getUserRepositories(String username);
  Future<Either<Failure, Unit>> followUser(String username);
  Future<Either<Failure, Unit>> unfollowUser(String username);
  Future<Either<Failure, Unit>> starRepository(String owner, String repo);
  Future<Either<Failure, Unit>> unstarRepository(String owner, String repo);
}