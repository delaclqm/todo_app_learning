part of 'todo_actor_bloc.dart';

@freezed
abstract class TodoActorEvent with _$TodoActorEvent {
  const factory TodoActorEvent.deleted(TodoCategory todo) = _Deleted;
}
