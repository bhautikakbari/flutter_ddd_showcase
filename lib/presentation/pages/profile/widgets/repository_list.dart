// presentation/pages/profile/widgets/repository_list.dart
import 'package:flutter/material.dart';
import '../../../../domain/entities/github_repo.dart';
import '../../../widgets/repository/repository_card.dart';

class RepositoryList extends StatelessWidget {
  final List<GithubRepo> repositories;

  const RepositoryList({Key? key, required this.repositories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: repositories.length,
      itemBuilder: (context, index) {
        return RepositoryCard(repository: repositories[index]);
      },
    );
  }
}