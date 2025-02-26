// injection.dart
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'application/commands/follow_user_command.dart';
import 'application/commands/star_repository_command.dart';
import 'application/commands/unfollow_user_command.dart';
import 'application/commands/unstar_repository_command.dart';
import 'application/queries/get_user_profile_query.dart';
import 'application/queries/get_user_repositories_query.dart';
import 'domain/repositories/i_github_repository.dart';
import 'infrastructure/datasources/github_remote_data_source.dart';
import 'infrastructure/repositories/github_repository.dart';
import 'presentation/pages/profile/cubit/profile_cubit.dart';
import 'presentation/pages/search/cubit/search_cubit.dart';

final GetIt getIt = GetIt.instance;

void initializeDependencies() {
  // External
  getIt.registerLazySingleton<http.Client>(() => http.Client());

  // Data sources
  getIt.registerLazySingleton<GithubRemoteDataSource>(
        () => GithubRemoteDataSource(getIt<http.Client>()),
  );

  // Repositories
  getIt.registerLazySingleton<IGithubRepository>(
        () => GithubRepository(getIt<GithubRemoteDataSource>()),
  );

  // Use cases
  getIt.registerLazySingleton(
        () => GetUserProfileQuery(getIt<IGithubRepository>()),
  );
  getIt.registerLazySingleton(
        () => GetUserRepositoriesQuery(getIt<IGithubRepository>()),
  );
  getIt.registerLazySingleton(
        () => FollowUserCommand(getIt<IGithubRepository>()),
  );
  getIt.registerLazySingleton(
        () => UnfollowUserCommand(getIt<IGithubRepository>()),
  );
  getIt.registerLazySingleton(
        () => StarRepositoryCommand(getIt<IGithubRepository>()),
  );
  getIt.registerLazySingleton(
        () => UnstarRepositoryCommand(getIt<IGithubRepository>()),
  );

  // Cubits
  getIt.registerFactory(
        () => ProfileCubit(
      getIt<GetUserProfileQuery>(),
      getIt<GetUserRepositoriesQuery>(),
    ),
  );
  getIt.registerFactory(
        () => SearchCubit(getIt<GetUserProfileQuery>()),
  );
}