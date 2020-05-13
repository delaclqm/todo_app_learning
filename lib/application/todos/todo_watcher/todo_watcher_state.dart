part of 'todo_watcher_bloc.dart';

@freezed
abstract class TodoWatcherState with _$TodoWatcherState {
  const factory TodoWatcherState.initial() = Initial;
  const factory TodoWatcherState.loadInProgress() = DataTransferInProgress;
  const factory TodoWatcherState.loadSuccess(KtList<TodoCategory> todos) = LoadSuccess;
  const factory TodoWatcherState.loadFailure(TodoCategoryFailure todoFailure) =
      LoadFailure;
}
