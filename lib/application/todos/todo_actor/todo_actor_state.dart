part of 'todo_actor_bloc.dart';

@freezed
abstract class TodoActorState with _$TodoActorState {
  const factory TodoActorState.initial() = Initial;
  const factory TodoActorState.actionInProgress() = ActionInProgress;
  const factory TodoActorState.deleteFailure(TodoCategoryFailure todoFailure) =
      DeleteFailure;
  const factory TodoActorState.deleteSuccess() = DeleteSuccess;
}
