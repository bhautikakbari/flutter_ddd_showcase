// infrastructure/dtos/github_repo_dto.dart
import '../../domain/entities/github_repo.dart';

class GithubRepoDto {
  final String id;
  final String name;
  final String? description;
  final String language;
  final int stargazersCount;
  final int forksCount;
  final bool isPrivate;

  GithubRepoDto({
    required this.id,
    required this.name,
    this.description,
    required this.language,
    required this.stargazersCount,
    required this.forksCount,
    required this.isPrivate,
  });

  factory GithubRepoDto.fromJson(Map<String, dynamic> json) {
    return GithubRepoDto(
      id: json['id'].toString(),
      name: json['name'],
      description: json['description'],
      language: json['language'] ?? 'Unknown',
      stargazersCount: json['stargazers_count'],
      forksCount: json['forks_count'],
      isPrivate: json['private'],
    );
  }

  GithubRepo toDomain() {
    return GithubRepo(
      id: id,
      name: name,
      description: description,
      language: language,
      stargazersCount: stargazersCount,
      forksCount: forksCount,
      isPrivate: isPrivate,
    );
  }
}