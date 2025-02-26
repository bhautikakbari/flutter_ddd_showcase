// infrastructure/repositories/github_repository.dart
import 'package:dartz/dartz.dart';
import '../../domain/core/failures.dart';
import '../../domain/entities/github_user.dart';
import '../../domain/entities/github_repo.dart';
import '../../domain/repositories/i_github_repository.dart';
import '../datasources/github_remote_data_source.dart';

class GithubRepository implements IGithubRepository {
  final GithubRemoteDataSource remoteDataSource;

  GithubRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, GithubUser>> getUser(String username) async {
    try {
      final userDto = await remoteDataSource.getUser(username);
      return right(userDto.toDomain());
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<GithubRepo>>> getUserRepositories(String username) async {
    try {
      final reposDto = await remoteDataSource.getUserRepositories(username);
      return right(reposDto.map((dto) => dto.toDomain()).toList());
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> followUser(String username) async {
    // Implement
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> unfollowUser(String username) async {
    // Implement
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> starRepository(String owner, String repo) async {
    // Implement
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> unstarRepository(String owner, String repo) async {
    // Implement
    return right(unit);
  }
}