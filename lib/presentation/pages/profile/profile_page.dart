// presentation/pages/profile/profile_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/profile_cubit.dart';
import 'cubit/profile_state.dart';
import 'widgets/profile_header.dart';
import 'widgets/stats_row.dart';
import 'widgets/repository_list.dart';
import '../../widgets/common/loading_indicator.dart';
import '../../widgets/common/error_view.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  const ProfilePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => context.read<ProfileCubit>()..loadProfile(username),
      child: Scaffold(
        appBar: AppBar(
          title: Text(username),
        ),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingIndicator();
            }

            if (state.failure != null) {
              return ErrorView(message: state.failure!.message);
            }

            if (state.user == null) {
              return const ErrorView(message: 'User not found');
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ProfileHeader(user: state.user!),
                  const SizedBox(height: 24),
                  StatsRow(user: state.user!),
                  const SizedBox(height: 24),
                  if (state.repositories != null) ...[
                    Text(
                      'Repositories',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    RepositoryList(repositories: state.repositories!),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}