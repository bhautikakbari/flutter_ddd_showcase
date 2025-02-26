// presentation/pages/search/search_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/search_cubit.dart';
import 'cubit/search_state.dart';
import '../../core/routes.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Profile Search'),
      ),
      body: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {
          if (!state.isLoading && state.error == null) {
            final searchCubit = context.read<SearchCubit>();
            final username = searchCubit.getLastSearchedUsername();
            if (username != null && username.isNotEmpty) {
              Navigator.pushNamed(
                context,
                Routes.profile,
                arguments: username,
              );
            }
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'GitHub Username',
                    errorText: state.error,
                    border: const OutlineInputBorder(),
                  ),
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      context.read<SearchCubit>().searchUser(value);
                    }
                  },
                ),
                if (state.isLoading)
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}