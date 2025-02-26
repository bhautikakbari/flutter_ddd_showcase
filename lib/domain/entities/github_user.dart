// domain/entities/github_user.dart
class GithubUser {
  final String id;
  final String login;
  final String avatarUrl;
  final String? name;
  final String? bio;
  final int followers;
  final int following;
  final int publicRepos;

  GithubUser({
    required this.id,
    required this.login,
    required this.avatarUrl,
    this.name,
    this.bio,
    required this.followers,
    required this.following,
    required this.publicRepos,
  });
}