// infrastructure/dtos/github_user_dto.dart
import '../../domain/entities/github_user.dart';

class GithubUserDto {
  final String id;
  final String login;
  final String avatarUrl;
  final String? name;
  final String? bio;
  final int followers;
  final int following;
  final int publicRepos;

  GithubUserDto({
    required this.id,
    required this.login,
    required this.avatarUrl,
    this.name,
    this.bio,
    required this.followers,
    required this.following,
    required this.publicRepos,
  });

  factory GithubUserDto.fromJson(Map<String, dynamic> json) {
    return GithubUserDto(
      id: json['id'].toString(),
      login: json['login'],
      avatarUrl: json['avatar_url'],
      name: json['name'],
      bio: json['bio'],
      followers: json['followers'],
      following: json['following'],
      publicRepos: json['public_repos'],
    );
  }

  GithubUser toDomain() {
    return GithubUser(
      id: id,
      login: login,
      avatarUrl: avatarUrl,
      name: name,
      bio: bio,
      followers: followers,
      following: following,
      publicRepos: publicRepos,
    );
  }
}