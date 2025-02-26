// domain/entities/github_repo.dart
class GithubRepo {
  final String id;
  final String name;
  final String? description;
  final String language;
  final int stargazersCount;
  final int forksCount;
  final bool isPrivate;

  GithubRepo({
    required this.id,
    required this.name,
    this.description,
    required this.language,
    required this.stargazersCount,
    required this.forksCount,
    required this.isPrivate,
  });
}