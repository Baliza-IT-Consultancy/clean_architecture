/// The enum that sorts the [Todo]s
enum TodoSortType {
  /// Sort by date
  date,

  /// Sort by completed
  completed,
}

/// Status of the [TodoBloc] state
enum TodoStatus {
  /// The [TodoBloc] is initializing
  initial,

  /// The [TodoBloc] is loading
  loading,

  /// The [TodoBloc] is loaded
  loaded,

  /// The [TodoBloc] has error
  error,
}

/// Filters for [Todo] list
enum TodoFilterType {
  /// Show all the [Todo]s
  all,

  /// Show only the [Todo]s that are not completed
  active,

  /// Show only the [Todo]s that are completed
  completed,
}
