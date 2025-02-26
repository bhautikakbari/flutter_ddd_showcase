// presentation/pages/profile/widgets/profile_header.dart
import 'package:flutter/material.dart';
import '../../../../domain/entities/github_user.dart';

class ProfileHeader extends StatelessWidget {
  final GithubUser user;

  const ProfileHeader({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(user.avatarUrl),
        ),
        const SizedBox(height: 16),
        Text(
          user.name ?? user.login,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        if (user.bio != null) ...[
          const SizedBox(height: 8),
          Text(
            user.bio!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ],
    );
  }
}