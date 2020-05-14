import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/todo/i_todo_repository.dart';
import '../../../domain/todo/todo_category/todo_category.dart';
import '../../../domain/todo/todo_category/todo_category_failure.dart';

part 'todo_watcher_bloc.freezed.dart';
part 'todo_watcher_event.dart';
part 'todo_watcher_state.dart';

@injectable
class TodoWatcherBloc extends Bloc<TodoWatcherEvent, TodoWatcherState> {
  final ITodoRepository _todoRepository;

  TodoWatcherBloc(this._todoRepository);

  StreamSubscription<Either<TodoCategoryFailure, KtList<TodoCategory>>> _todoStreamSubscription;

  @override
  TodoWatcherState get initialState => const TodoWatcherState.initial();

  @override
  Stream<TodoWatcherState> mapEventToState(
    TodoWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const TodoWatcherState.loadInProgress();
        await _todoStreamSubscription?.cancel();
        _todoStreamSubscription = _todoRepository
            .watchAll()
            .listen((todos) => add(TodoWatcherEvent.todosReceived(todos)));
      },
      todosReceived: (e) async* {
        yield e.failureOrTodos.fold(
          (f) => TodoWatcherState.loadFailure(f),
          (todos) => TodoWatcherState.loadSuccess(todos),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _todoStreamSubscription.cancel();
    return super.close();
  }
}
