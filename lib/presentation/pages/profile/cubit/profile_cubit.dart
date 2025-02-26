// presentation/pages/profile/cubit/profile_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/queries/get_user_profile_query.dart';
import '../../../../application/queries/get_user_repositories_query.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetUserProfileQuery _getUserProfileQuery;
  final GetUserRepositoriesQuery _getUserRepositoriesQuery;

  ProfileCubit(this._getUserProfileQuery, this._getUserRepositoriesQuery)
      : super(ProfileState.initial());

  Future<void> loadProfile(String username) async {
    emit(state.copyWith(isLoading: true, failure: null));

    final userResult = await _getUserProfileQuery.execute(username);

    userResult.fold(
          (failure) => emit(state.copyWith(
        isLoading: false,
        failure: failure,
      )),
          (user) async {
        final reposResult = await _getUserRepositoriesQuery.execute(username);

        emit(state.copyWith(
          isLoading: false,
          user: user,
          repositories: reposResult.fold(
                (failure) => null,
                (repos) => repos,
          ),
        ));
      },
    );
  }
}