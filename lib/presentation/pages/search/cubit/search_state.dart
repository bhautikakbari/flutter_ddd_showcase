// presentation/pages/search/cubit/search_state.dart
class SearchState {
  final bool isLoading;
  final String? error;
  final String? lastSearchedUsername;

  SearchState({
    required this.isLoading,
    this.error,
    this.lastSearchedUsername,
  });

  factory SearchState.initial() => SearchState(isLoading: false);

  SearchState copyWith({
    bool? isLoading,
    String? error,
    String? lastSearchedUsername,
  }) {
    return SearchState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      lastSearchedUsername: lastSearchedUsername ?? this.lastSearchedUsername,
    );
  }
}