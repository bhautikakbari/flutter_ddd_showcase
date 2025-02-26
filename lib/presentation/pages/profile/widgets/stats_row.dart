// presentation/pages/profile/widgets/stats_row.dart
import 'package:flutter/material.dart';
import '../../../../domain/entities/github_user.dart';

class StatsRow extends StatelessWidget {
  final GithubUser user;

  const StatsRow({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _StatItem(
          label: 'Repositories',
          value: user.publicRepos.toString(),
        ),
        _StatItem(
          label: 'Followers',
          value: user.followers.toString(),
        ),
        _StatItem(
          label: 'Following',
          value: user.following.toString(),
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}