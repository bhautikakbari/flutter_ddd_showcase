// presentation/widgets/repository/repository_card.dart
import 'package:flutter/material.dart';
import '../../../domain/entities/github_repo.dart';

class RepositoryCard extends StatelessWidget {
  final GithubRepo repository;

  const RepositoryCard({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              repository.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (repository.description != null) ...[
              const SizedBox(height: 8),
              Text(
                repository.description!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
            const SizedBox(height: 8),
            Row(
              children: [
                _IconLabel(
                  icon: Icons.code,
                  label: repository.language,
                ),
                const SizedBox(width: 16),
                _IconLabel(
                  icon: Icons.star_border,
                  label: repository.stargazersCount.toString(),
                ),
                const SizedBox(width: 16),
                _IconLabel(
                  icon: Icons.fork_right,
                  label: repository.forksCount.toString(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _IconLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  const _IconLabel({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16),
        const SizedBox(width: 4),
        Text(label),
      ],
    );
  }
}