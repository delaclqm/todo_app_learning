import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app_learning/domain/todo/i_todo_repository.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category_failure.dart';

part 'todo_actor_event.dart';
part 'todo_actor_state.dart';

part 'todo_actor_bloc.freezed.dart';

@injectable
class TodoActorBloc extends Bloc<TodoActorEvent, TodoActorState> {
  final ITodoRepository _todoRepository;

  TodoActorBloc(this._todoRepository);

  @override
  TodoActorState get initialState => const TodoActorState.initial();

  @override
  Stream<TodoActorState> mapEventToState(
    TodoActorEvent event,
  ) async* {
    // We have only one NoteActorEvent - there's no union type
    yield const TodoActorState.actionInProgress();
    final possibleFailure = await _todoRepository.delete(event.todo);
    yield possibleFailure.fold(
      (f) => TodoActorState.deleteFailure(f),
      // Yielding unchanged state - nothing will be emitted from the BLoC
      (_) => const TodoActorState.deleteSuccess(),
    );
  }
}
