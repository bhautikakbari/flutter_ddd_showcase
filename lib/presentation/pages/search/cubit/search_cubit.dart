// presentation/pages/search/cubit/search_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/queries/get_user_profile_query.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final GetUserProfileQuery _getUserProfileQuery;

  SearchCubit(this._getUserProfileQuery) : super(SearchState.initial());

  String? getLastSearchedUsername() => state.lastSearchedUsername;

  Future<void> searchUser(String username) async {
    if (username.isEmpty) {
      emit(state.copyWith(error: 'Please enter a username'));
      return;
    }

    emit(state.copyWith(
      isLoading: true,
      error: null,
      lastSearchedUsername: username,
    ));

    final result = await _getUserProfileQuery.execute(username);

    result.fold(
          (failure) => emit(state.copyWith(
        isLoading: false,
        error: failure.message,
        lastSearchedUsername: null,
      )),
          (_) => emit(state.copyWith(
        isLoading: false,
        lastSearchedUsername: username,
      )),
    );
  }
}