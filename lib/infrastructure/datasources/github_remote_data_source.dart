// infrastructure/datasources/github_remote_data_source.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dtos/github_user_dto.dart';
import '../dtos/github_repo_dto.dart';

class GithubRemoteDataSource {
  final http.Client client;
  final String baseUrl = 'https://api.github.com';

  GithubRemoteDataSource(this.client);

  Future<GithubUserDto> getUser(String username) async {
    final response = await client.get(
      Uri.parse('$baseUrl/users/$username'),
      headers: {'Accept': 'application/vnd.github.v3+json'},
    );

    if (response.statusCode == 200) {
      return GithubUserDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<List<GithubRepoDto>> getUserRepositories(String username) async {
    final response = await client.get(
      Uri.parse('$baseUrl/users/$username/repos'),
      headers: {'Accept': 'application/vnd.github.v3+json'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> reposJson = json.decode(response.body);
      return reposJson.map((repo) => GithubRepoDto.fromJson(repo)).toList();
    } else {
      throw Exception('Failed to load repositories');
    }
  }

// Add other methods for following/unfollowing users and starring/unstarring repos
}