// presentation/pages/profile/cubit/profile_state.dart
import '../../../../domain/core/failures.dart';
import '../../../../domain/entities/github_user.dart';
import '../../../../domain/entities/github_repo.dart';

class ProfileState {
  final bool isLoading;
  final GithubUser? user;
  final List<GithubRepo>? repositories;
  final Failure? failure;

  ProfileState({
    required this.isLoading,
    this.user,
    this.repositories,
    this.failure,
  });

  factory ProfileState.initial() => ProfileState(isLoading: false);

  ProfileState copyWith({
    bool? isLoading,
    GithubUser? user,
    List<GithubRepo>? repositories,
    Failure? failure,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      repositories: repositories ?? this.repositories,
      failure: failure ?? this.failure,
    );
  }
}