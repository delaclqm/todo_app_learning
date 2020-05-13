part of 'todo_watcher_bloc.dart';

@freezed
abstract class TodoWatcherEvent with _$TodoWatcherEvent {
  const factory TodoWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory TodoWatcherEvent.todosReceived(
      Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos) = _TodosReceived;
}
